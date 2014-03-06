module MyERP

  class Transaction < Hashie::Mash
    include MyERP::Model

    api_path '/transactions'

  end
end
