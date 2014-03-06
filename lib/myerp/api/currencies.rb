module MyERP
  module API
    class Currencies < Base
      api_model MyERP::Currency

      include MyERP::Crud
    end
  end
end
