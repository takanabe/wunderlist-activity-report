require "spec_helper"

RSpec.describe Wunderlist::Activity::Report do
  it "has a version number" do
    expect(Wunderlist::Activity::Report::VERSION).not_to be nil
  end
end
