module MyERP
  module Model
    def self.included(base)
      base.send :include, InstanceMethods
      base.send :extend, ClassMethods
    end

    module InstanceMethods
      def to_json(*args)
        as_json(*args).to_json(*args)
      end

      def as_json(args = {})
        inner_json = self.to_hash.stringify_keys
        inner_json.delete("cache_version")
        inner_json
      end

      def to_i; id; end

      def ==(other)
        id == other.id
      end
    end

    module ClassMethods
      # This sets the API path so the API collections can use them in an agnostic way
      # @return [void]
      def api_path(path = nil)
        @_api_path ||= path
      end

      def parse(json)
        parsed = String === json ? JSON.parse(json) : json
        Array.wrap(parsed).map {|attrs| new(attrs) }
      end

      def wrap(model_or_attrs)
        case model_or_attrs
        when Hashie::Mash
          model_or_attrs
        when Hash
          new(model_or_attrs)
        else
          model_or_attrs
        end
      end

      def delegate_methods(options)
        raise "no methods given" if options.empty?
        options.each do |source, dest|
          class_eval <<-EOV
            def #{source}
              #{dest}
            end
          EOV
        end
      end
    end
  end
end
