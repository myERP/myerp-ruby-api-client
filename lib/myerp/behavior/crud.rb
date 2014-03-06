module MyERP
  module Behavior
    module Crud

      def all(query_options = {})
        resp = request(:get, credentials, api_model.api_path, :query => query_options)
        MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response))
      end

      def find(id)
        raise "id required" unless id
        resp = request(:get, credentials, "#{api_model.api_path}/#{id}")
        MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response).first)
      end

      def save(model)
        model = api_model.wrap(model)
        if model.new?
          resp = request(:post, credentials, "#{api_model.api_path}", :body => model.to_json)
        else
          resp = request(:put, credentials, "#{api_model.api_path}/#{model.to_i}", :body => model.to_json)
        end
        MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response).first)
      end

      def bulkSave(models)
        raise "array required" unless models.is_a?(Array)
        resp = request(:put, credentials, "#{api_model.api_path}", :body => models.to_json)
        MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response))
      end

      def delete(model)
        if model.is_a?(Array)
          resp = request(:delete, credentials, "#{api_model.api_path}", :body => model.to_json)
          MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response))
        else
          raise "model unsaved" unless !model.new?
          resp = request(:delete, credentials, "#{api_model.api_path}/#{model.to_i}")
          MyERP::Response.new(resp.headers, api_model.parse(resp.parsed_response).first)
        end
      end
    end
  end
end
