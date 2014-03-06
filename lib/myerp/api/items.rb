module MyERP
  module API
    class Items < Base
      api_model MyERP::Item

      include MyERP::Crud
    end
  end
end
