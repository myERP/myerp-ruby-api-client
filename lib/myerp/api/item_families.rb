module MyERP
  module API
    class ItemFamilies < Base
      api_model MyERP::ItemFamily

      include MyERP::Crud
    end
  end
end
