module MyERP
  module API
    class Customers < Base
      api_model MyERP::Customer

      include MyERP::Behavior::Crud
    end
  end
end
