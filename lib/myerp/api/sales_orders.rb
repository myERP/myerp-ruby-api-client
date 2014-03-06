module MyERP
  module API
    class SalesOrders < Base
      api_model MyERP::SalesOrder

      include MyERP::Crud
    end
  end
end
