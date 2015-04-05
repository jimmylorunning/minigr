require 'rails_helper'

RSpec.describe Like, type: :model do
  it { should belong_to(:reader) }
  it { should belong_to(:likeable) }

  context "associates" do
    before(:all) do
      @review = FactoryGirl.create(:review)
      @r1 = FactoryGirl.create(:reader)
      @r2 = FactoryGirl.create(:reader)
      @fr = @r1.follow_relationships.create(followed: @r2)
      @r2.likes.create(likeable: @fr)
      @review = FactoryGirl.create(:review)
      @r1.likes.create(likeable: @review)
    end

    it "with a following" do
      @r2.likes.last.likeable.should eq(@fr)
    end

    it "with a review" do
      @r1.likes.last.likeable.should eq(@review)
    end
  end
end
