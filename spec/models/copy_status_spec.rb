require 'rails_helper'

RSpec.describe CopyStatus, type: :model do
  it { should belong_to(:copy) }
  it { should have_many(:likes) }
  it { should have_many(:comments) }

  context "associates" do
    before(:all) do
      @copy = FactoryGirl.create(:copy)
      @status = @copy.copy_statuses.create(message: "this part is great", page_number: 54)
      @reader = FactoryGirl.create(:reader)
      @reader.likes.create(likeable: @status)
      @reader.comments.create(commentable: @status, body: "i love that part too")
    end

    it "with a copy" do
      @status.copy.should eq(@copy)
      @copy.copy_statuses.count.should eq(1)
    end

    it "with a like" do
      @status.likes.count.should eq(1)
      @status.likes.last.reader.should eq(@reader)
    end

    it "with a comment" do
      @status.comments.count.should eq(1)
      @status.comments.first.reader.should eq(@reader)
      @status.comments.first.body.should eq("i love that part too")
    end
  end
end
