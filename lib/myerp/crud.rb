module MyERP
  module Crud

    def all()
      limit = 100; page = 0; res = [];
      loop do
        resp = request(:get, credentials, api_model.api_path, :query => { :offset => page * limit, :limit => limit })
        page = page + 1
        res += api_model.parse(resp.parsed_response)
        break if resp.headers['X-MyERP-Has-Next-Page'] != "true"
      end
      res
    end

    def findAll()
      all()
    end

    def find(id)
      raise "id required" unless id
      resp = request(:get, credentials, "#{api_model.api_path}/#{id}")
      api_model.parse(resp.parsed_response).first
    end

    def save(model)
      model = api_model.wrap(model)
      if model.new?
        resp = request(:post, credentials, "#{api_model.api_path}", :body => model.to_json)
      else
        resp = request(:put, credentials, "#{api_model.api_path}/#{model.to_i}", :body => model.to_json)
      end
      api_model.parse(resp.parsed_response).first
    end

    def delete(model)
      raise "model unsaved" unless !model.new?
      resp = request(:delete, credentials, "#{api_model.api_path}/#{model.to_i}")
      api_model.parse(resp.parsed_response).first
    end
  end
end
