module MyERP
  class Credentials
    attr_accessor :api_key, :api_email, :options

    def initialize(api_email, api_key, options)
      @api_email, @api_key, @options = api_email, api_key, options
    end

    def valid?
      !api_email.nil? && !api_key.nil? && !options.nil?
    end

    def basic_auth
      Base64.encode64("#{api_email}:#{api_key}").delete("\r\n")
    end

    def host
      site = "#{@options[:protocol]}://"
      if (@options[:protocol] == 'http' && @options[:port] == 80) || (@options[:protocol] == 'https' && @options[:port] == 443)
        site += @options[:host]
      else
        site += "#{@options[:host]}:#{@options[:port]}"
      end
      site += @options[:prefix].to_s
    end
  end
end
