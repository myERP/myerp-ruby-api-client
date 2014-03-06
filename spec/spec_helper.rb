require 'myerp_api'
require 'webmock/rspec'
require 'vcr'
require 'factory_girl'

VCR.configure do |c|
  c.cassette_library_dir = '.cassettes'
  c.hook_into :webmock
end

FileUtils.rm(Dir["#{VCR.configuration.cassette_library_dir}/*"]) if ENV['VCR_REFRESH'] == 'true'

FactoryGirl.find_definitions

RSpec.configure do |config|

  config.before(:suite) do
    WebMock.allow_net_connect!
  end

  config.before(:each) do
    WebMock.allow_net_connect!
  end

  def cassette(*args)
    VCR.use_cassette(*args) do
      yield
    end
  end
end
