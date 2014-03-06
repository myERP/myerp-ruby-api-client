module MyERP
  module API
    class Customers < Base
      api_model MyERP::Customer

      include MyERP::Crud
    end
  end
end
