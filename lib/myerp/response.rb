module MyERP

  class Response
    attr_reader :body
    attr_reader :headers

    def initialize(headers, body)
      @headers, @body = headers, body
    end

    def to_s
      @body
    end

    def nextPage?
      @headers['X-MyERP-Has-Next-Page'] == "true"
    end

  end
end
