require 'spec_helper'

describe MyERP::Credentials do
  describe "#valid?" do
    it "should return true if email, key, and options is filled out" do
      MyERP::Credentials.new("email", "key", {}).should be_valid
    end

    it "should return false if either email, key, and options is nil" do
      MyERP::Credentials.new("email", "key", nil).should_not be_valid
      MyERP::Credentials.new("email", nil, {}).should_not be_valid
      MyERP::Credentials.new(nil, "key", {}).should_not be_valid
      MyERP::Credentials.new(nil, nil, nil).should_not be_valid
    end
  end

  describe "#basic_auth" do
    it "should base64 encode the credentials" do
      MyERP::Credentials.new("email", "key", {}).basic_auth.should == "ZW1haWw6a2V5"
    end
  end

  describe "#host" do
    it "should not display the port if it's http/80 or https/443" do
      MyERP::Credentials.new("email", "key", {:protocol => 'https', :host => 'app.myerp.com', :port => 443, :prefix => '/api/v1'})
      .host.should == "https://app.myerp.com/api/v1"

      MyERP::Credentials.new("email", "key", {:protocol => 'http', :host => 'app.myerp.com', :port => 80, :prefix => '/api/v1'})
        .host.should == "http://app.myerp.com/api/v1"
    end

    it "should display the port if it's http/!=80 or https/!=443" do
      MyERP::Credentials.new("email", "key", {:protocol => 'https', :host => 'app.myerp.com', :port => 4433, :prefix => '/api/v1'})
      .host.should == "https://app.myerp.com:4433/api/v1"

      MyERP::Credentials.new("email", "key", {:protocol => 'http', :host => 'app.myerp.com', :port => 8080, :prefix => '/api/v1'})
        .host.should == "http://app.myerp.com:8080/api/v1"
    end
  end
end
