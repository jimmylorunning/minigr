require 'rails_helper'

RSpec.describe Status, type: :model do
  it { should belong_to(:reader) }

  context "associates" do
    before(:all) do
      @reader = FactoryGirl.create(:reader)
      @reader.statuses.create(message: "hello world")
    end

    it "with a reader" do
      @reader.statuses.count.should eq(1)
      @reader.statuses.first.message.should eq("hello world")
    end
  end
end
