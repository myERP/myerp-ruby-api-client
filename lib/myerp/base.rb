module MyERP
  class Base
    attr_reader :request, :credentials

    DEFAULTS = {
      :protocol => 'https',
      :host => 'app.myerp.com',
      :port => 443,
      :prefix => '/api/v1'
    }

    def initialize(api_email, api_key, options = {})
      opts = DEFAULTS.merge! options
      @credentials = Credentials.new(api_email, api_key, opts)
      raise InvalidCredentials unless credentials.valid?
    end

    def customers
      @customers ||= MyERP::API::Customers.new(credentials)
    end

  end
end
