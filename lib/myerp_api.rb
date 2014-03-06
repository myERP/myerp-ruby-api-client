require 'httparty'
require 'base64'
require 'delegate'
require 'hashie'
require 'json'
require 'time'
require 'csv'

require 'ext/array'
require 'ext/hash'
require 'ext/date'
require 'ext/time'

require 'myerp/credentials'
require 'myerp/errors'
require 'myerp/base'

%w(model crud customer).each {|a| require "myerp/#{a}"}
%w(base customers).each {|a| require "myerp/api/#{a}"}

module MyERP
  VERSION = File.read(File.expand_path(File.join(File.dirname(__FILE__), '..', 'VERSION'))).strip

  class << self

    def client(api_email, api_key, options = {})
      MyERP::Base.new(api_email, api_key, options)
    end
  end
end
