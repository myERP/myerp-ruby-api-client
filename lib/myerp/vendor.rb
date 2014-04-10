module MyERP

  class Vendor < Hashie::Mash
    include MyERP::Model

    api_path '/vendors'

  end
end
