module MyERP

  class Item < Hashie::Mash
    include MyERP::Model

    api_path '/items'

  end
end
