require 'wunderlist/api'
require 'open-uri'
require 'json'

module Wunderlist
  class Client
    def hello
      "hello"
    end
    def create_url(action)
      Wunderlist::Api::ENDPOINT + action
    end

    def create_url_with_params(action, params)
      Wunderlist::Api::ENDPOINT + action + '?' + URI.encode_www_form(params)
    end
  end
end
