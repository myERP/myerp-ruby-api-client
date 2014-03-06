module MyERP
  class Base
    attr_reader :request, :credentials

    def initialize(api_email, api_key, options = {})
      @credentials = Credentials.new(api_email, api_key)
      raise InvalidCredentials unless credentials.valid?
    end

    def customers
      @customers ||= MyERP::API::Customers.new(credentials)
    end

  end
end
