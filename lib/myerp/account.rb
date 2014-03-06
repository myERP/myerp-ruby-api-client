module MyERP

  class Account < Hashie::Mash
    include MyERP::Model

    api_path '/accounts'

  end
end
