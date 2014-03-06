module MyERP
  module API
    class Accounts < Base
      api_model MyERP::Account

      include MyERP::Crud
    end
  end
end
