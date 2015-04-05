require 'rails_helper'

RSpec.describe Review, type: :model do
  it { should belong_to(:copy) }
  it { should have_one(:reviewer) }

  context "associations" do
  	before(:all) do
  		@reader = FactoryGirl.create(:reader)
      @shelf = @reader.shelves.create(name: "to read")
      @copy = @shelf.copies.create(notes: "read this next")
      @review = FactoryGirl.create(:review)
      @copy.review = @review
      @reader2 = FactoryGirl.create(:reader)
    end
    subject { @review }
    its(:copy)			{ should eq(@copy) }
    its(:reviewer)	{ should eq(@reader) }
    context "having changed reviewer indirectly" do
      before do
        @shelf.reader = @reader2
        @shelf.save        
        @review.reload
      end
      its(:reviewer)  { should eq(@reader2) }
    end
  end
end
