module MyERP

  class Customer < Hashie::Mash
    include MyERP::Model

    api_path '/customers'

  end
end
