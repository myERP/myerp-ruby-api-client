module MyERP

  class Project < Hashie::Mash
    include MyERP::Model

    api_path '/projects'

  end
end
