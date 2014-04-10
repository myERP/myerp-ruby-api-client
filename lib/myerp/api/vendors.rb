module MyERP
  module API
    class Vendors < Base
      api_model MyERP::Vendor

      include MyERP::Crud
    end
  end
end
