require 'rails_helper'

RSpec.describe Rating, type: :model do
  it { should belong_to(:copy) }
  context "associations" do
    before(:all) do
      @copy = FactoryGirl.create(:copy)
      @rating = @copy.create_rating(score: 1.5)
    end
    subject { @rating }
    its(:copy)  { should eq(@copy) }
    its(:score) { should eq(1.5) }
  end
end
