require 'rails_helper'

RSpec.describe Comment, type: :model do
  it { should belong_to(:reader) }
  it { should belong_to(:commentable) }

  context "associates" do
    before(:all) do
      @other = FactoryGirl.create(:reader)
      @reader = FactoryGirl.create(:reader)
      @read = @reader.shelves.create(name: "read")
      @copy = @read.copies.create(notes: "my copy")
      @review = FactoryGirl.create(:review)
      @copy.review = @review
      @comment = @review.comments.create(reader: @other, body: "you are so wrong")
    end

    it "with a review and a reader" do
      @comment.reader.should eq(@other)
      @comment.commentable.should eq(@review)
    end
  end
      
      
end
