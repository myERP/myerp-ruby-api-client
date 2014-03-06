module MyERP
  module API
    class Projects < Base
      api_model MyERP::Project

      include MyERP::Crud
    end
  end
end
