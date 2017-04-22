require "spec_helper"
require 'wunderlist/client'

RSpec.describe Wunderlist::Client do
  let(:client) { described_class.new }
  describe '#hello' do
    it "returns hello" do
      expect(client.hello).to eq('hello')
    end
  end
end

