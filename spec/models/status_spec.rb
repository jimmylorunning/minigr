require 'rails_helper'

RSpec.describe Status, type: :model do
  it { should belong_to(:reader) }

  context "associates" do
    before(:all) do
      @reader = FactoryGirl.create(:reader)
      @status = @reader.statuses.create(message: "hello world")
      @other = FactoryGirl.create(:reader)
      @other.likes.create(likeable: @status)
      @other.comments.create(commentable: @status, body: "great review!")
    end

    it "with a reader" do
      @reader.statuses.count.should eq(1)
      @reader.statuses.first.message.should eq("hello world")
    end
    
    it "with a like" do
      @status.likes.count.should eq(1)
      @status.likes.last.reader.should eq(@other)
    end

    it "with a comment" do
      @status.comments.count.should eq(1)
      @status.comments.first.reader.should eq(@other)
      @status.comments.first.body.should eq("great review!")
    end
  end
end
