module MyERP

  class PaymentTerm < Hashie::Mash
    include MyERP::Model

    api_path '/payment_terms'

  end
end
