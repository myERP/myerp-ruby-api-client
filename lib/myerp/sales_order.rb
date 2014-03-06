module MyERP

  class SalesOrder < Hashie::Mash
    include MyERP::Model

    api_path '/sales_orders'

  end
end
