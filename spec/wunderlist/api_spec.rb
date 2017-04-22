require "spec_helper"
require 'wunderlist/api'

RSpec.describe Wunderlist::Api do
  it "returns https://a.wunderlist.com/api/v1/" do
    expect(Wunderlist::Api::ENDPOINT).to eq('https://a.wunderlist.com/api/v1/')
  end
end

