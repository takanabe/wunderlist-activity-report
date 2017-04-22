require "spec_helper"
require 'wunderlist/api'
require 'wunderlist/client'

RSpec.describe Wunderlist::Client do
  let(:client) { described_class.new }
  describe '#hello' do
    it "returns hello" do
      expect(client.hello).to eq('hello')
    end
  end

  describe '#create_url' do
    it "returns https://a.wunderlist.com/api/v1/lists" do
      expect(client.create_url('lists')).to eq('https://a.wunderlist.com/api/v1/lists')
    end
  end

  describe '#create_url_with_paramas' do
    it "returns https://a.wunderlist.com/api/v1/tasks?list_id=1&completed=true" do
      url = client.create_url_with_params('tasks',{list_id: 1, completed: true})
      expect(url).to eq('https://a.wunderlist.com/api/v1/tasks?list_id=1&completed=true')
    end
  end
end