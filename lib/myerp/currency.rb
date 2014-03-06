module MyERP

  class Currency < Hashie::Mash
    include MyERP::Model

    api_path '/currencies'

  end
end
