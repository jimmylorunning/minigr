require 'rails_helper'

RSpec.describe Reader, type: :model do
  it { should have_many(:copies) }
  it { should have_many(:shelves) }
  it { should have_many(:categories) }

  context "reader creation" do
    before(:all) do
      @reader = FactoryGirl.create(:reader)
      @reader2 = FactoryGirl.create(:reader)
      @reader.following.push(@reader2)
    end

    subject { @reader }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should be_valid }
    it { should respond_to(:followers) }
    it { should respond_to(:following) }
    its(:following) { should eq([@reader2]) }
    it {
      expect(@reader2.followers).to eq([@reader]) 
    }
  end
end
