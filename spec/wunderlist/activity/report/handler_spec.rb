require "spec_helper"
require "wunderlist/activity/report/handler"

RSpec.describe Wunderlist::Activity::Report::Handler do
  let(:handler) { described_class.new }
  describe '#hello' do
    it "returns hello" do
      expect(handler.hello).to eq('hello')
    end
  end

  describe '#create_url' do
    it "returns https://a.wunderlist.com/api/v1/lists" do
      expect(handler.create_url('lists')).to eq('https://a.wunderlist.com/api/v1/lists')
    end
  end

  describe '#create_url' do
    it "returns https://a.wunderlist.com/api/v1/tasks?list_id=1&completed=true" do
      url = handler.create_url_with_params('tasks',{list_id: 1, completed: true})
      expect(url).to eq('https://a.wunderlist.com/api/v1/tasks?list_id=1&completed=true')
    end
  end
end
