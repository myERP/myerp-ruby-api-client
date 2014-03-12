module MyERP
  module API
    class Base
      attr_reader :credentials

      def initialize(credentials)
        @credentials = credentials
      end

      class << self
        def api_model(klass)
          class_eval <<-END
            def api_model
              #{klass}
            end
          END
        end
      end

      protected
        def request(method, credentials, path, options = {})
          params = {}
          params[:path] = path
          params[:options] = options
          params[:method] = method

          response = HTTParty.send(method, "#{credentials.host}#{path}",
            :query => options[:query],
            :body => options[:body],
            :format => :plain,
            :headers => {
              "Accept" => "application/json",
              "Content-Type" => "application/json; charset=utf-8",
              "Authorization" => "Basic #{credentials.basic_auth}",
              "User-Agent" => "myERP_api_ruby/#{MyERP::VERSION}",
            }.update(options[:headers] || {})
          )

          params[:response] = response.inspect.to_s
          case response.code
          when 200..201
            response
          when 400
            raise MyERP::BadRequest.new(response, params)
          when 401
            raise MyERP::AuthenticationFailed.new(response, params)
          when 404
            raise MyERP::NotFound.new(response, params)
          when 422
            raise MyERP::UnprocessableEntity.new(response, params)
          when 429
            raise MyERP::RateLimited.new(response, params)
          when 500
            raise MyERP::ServerError.new(response, params)
          else
            raise MyERP::HTTPError.new(response, params)
          end
        end
    end
  end
end
