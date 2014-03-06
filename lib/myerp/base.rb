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

    def accounts
      @accounts ||= MyERP::API::Accounts.new(credentials)
    end

    def currencies
      @currencies ||= MyERP::API::Currencies.new(credentials)
    end

    def customers
      @customers ||= MyERP::API::Customers.new(credentials)
    end

    def item_families
      @item_families ||= MyERP::API::ItemFamilies.new(credentials)
    end

    def items
      @items ||= MyERP::API::Items.new(credentials)
    end

    def payment_terms
      @payment_terms ||= MyERP::API::PaymentTerms.new(credentials)
    end

    def projects
      @projects ||= MyERP::API::Projects.new(credentials)
    end

    def sales_orders
      @sales_orders ||= MyERP::API::SalesOrders.new(credentials)
    end

    def transactions
      @transactions ||= MyERP::API::Transactions.new(credentials)
    end

  end
end
