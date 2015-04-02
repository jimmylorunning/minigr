require 'rails_helper'

RSpec.describe Tag, type: :model do
  before(:all) do
    @tag = FactoryGirl.create(:tag)
  end

  it { should belong_to(:reader) }
  it { should have_many(:taggings) }
  it { should have_many(:copies) }

  context "tagging creation" do
    before(:all) do
      @copy = FactoryGirl.create(:copy)
      @tag.copies.push(@copy)
    end
    subject { @tag }
    its(:copies) { should eq([@copy]) }
  end
end
