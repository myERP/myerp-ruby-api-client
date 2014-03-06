module MyERP
  class Credentials
    attr_accessor :api_key, :api_email

    def initialize(api_email, api_key)
      @api_email, @api_key = api_email, api_key
    end

    def valid?
      !api_email.nil? && !api_key.nil?
    end

    def basic_auth
      Base64.encode64("#{api_email}:#{api_key}").delete("\r\n")
    end

    def host
      "http://127.0.0.1:8888/api/v1"
    end
  end
end
