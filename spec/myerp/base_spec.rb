require 'spec_helper'

describe MyERP::Base do
  describe "email/key errors" do
    it "should raise error if missing a credential" do
      lambda { MyERP::Base.new(nil, "key") }.should raise_error(MyERP::InvalidCredentials)
      lambda { MyERP::Base.new("email", nil) }.should raise_error(MyERP::InvalidCredentials)
    end
  end
end
