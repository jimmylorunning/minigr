require 'rails_helper'

RSpec.describe Reader, type: :model do
  before(:all) do
    @reader = FactoryGirl.create(:reader)
  end

  it { should have_many(:copies) }
  it { should have_many(:tags) }
  it { should have_many(:shelves) }
  it { should have_many(:friendships) }
  it { should have_many(:friends) }

  context "reader creation" do
    subject { @reader }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should be_valid }
  end

  context "follow relationships" do
    before(:all) do
      @reader2 = FactoryGirl.create(:reader)
      @reader.following.push(@reader2)
    end
    
    subject { @reader }
    it { should respond_to(:followers) }
    it { should respond_to(:following) }
    its(:following) { should eq([@reader2]) }
    context "for the followed reader" do
      subject { @reader2 }
      its(:followers) { should eq([@reader]) }
    end
  end
end
