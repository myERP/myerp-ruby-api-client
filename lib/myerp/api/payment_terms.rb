module MyERP
  module API
    class PaymentTerms < Base
      api_model MyERP::PaymentTerm

      include MyERP::Crud
    end
  end
end
