require 'wunderlist/api'
require 'open-uri'
require 'json'

module Wunderlist
  class Client
    def hello
      "hello"
    end

    def headers
      {
        "X-Access-Token" => ENV["WUNDERLIST_ACCESS_TOKEN"],
        "X-Client-ID" => ENV["WUNDERLIST_CLIENT_ID"],
      }
    end

    def api_request(request_url)
      res = open(request_url, headers)
      code, message = res.status

      if code == '200'
        return JSON.parse(res.read)
      end
    end

    def create_url(action)
      Wunderlist::Api::ENDPOINT + action
    end

    def create_url_with_params(action, params)
      Wunderlist::Api::ENDPOINT + action + '?' + URI.encode_www_form(params)
    end
  end
end
