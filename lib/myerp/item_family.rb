module MyERP

  class ItemFamily < Hashie::Mash
    include MyERP::Model

    api_path '/item_families'

  end
end
