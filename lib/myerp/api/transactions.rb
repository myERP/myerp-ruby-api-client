module MyERP
  module API
    class Transactions < Base
      api_model MyERP::Transaction

      include MyERP::Crud
    end
  end
end
