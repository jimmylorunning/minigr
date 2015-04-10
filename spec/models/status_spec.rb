require 'rails_helper'

RSpec.describe Status, type: :model do
  it { should belong_to(:reader) }

  context "associates" do
    before(:all) do
      @reader = FactoryGirl.create(:reader)
      @status = @reader.statuses.create(message: "hello world")
      @other = FactoryGirl.create(:reader)
      @other.likes.create(likeable: @status)
    end

    it "with a reader" do
      @reader.statuses.count.should eq(1)
      @reader.statuses.first.message.should eq("hello world")
    end
    it "with a like" do
      @status.likes.count.should eq(1)
      @status.likes.last.reader.should eq(@other)
    end
  end
end
