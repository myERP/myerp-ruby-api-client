module MyERP
  module Behavior
    module Crud

      def all(query_options = {})
        response = request(:get, credentials, api_model.api_path, :query => query_options)
        api_model.parse(response.parsed_response)
      end

      def find(id)
        raise "id required" unless id
        response = request(:get, credentials, "#{api_model.api_path}/#{id}")
        api_model.parse(response.parsed_response).first
      end

      def save(model)
        model = api_model.wrap(model)
        if model.new?
          response = request(:post, credentials, "#{api_model.api_path}", :body => model.to_json)
        else
          response = request(:put, credentials, "#{api_model.api_path}/#{model.to_i}", :body => model.to_json)
        end
        api_model.parse(response.parsed_response).first
      end

      def delete(model)
        raise "model unsaved" unless !model.new?
        response = request(:delete, credentials, "#{api_model.api_path}/#{model.to_i}")
        api_model.parse(response.parsed_response).first
      end
    end
  end
end
