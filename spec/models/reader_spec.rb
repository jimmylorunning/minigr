require 'rails_helper'

RSpec.describe Reader, type: :model do
  it { should have_many(:copies) }
  it { should have_many(:shelves) }
  it { should have_many(:categories) }

  context "reader creation" do
    before(:all) do
      @reader = FactoryGirl.create(:reader)
    end

    subject { @reader }
    it { should respond_to(:email) }
    it { should respond_to(:password) }
    it { should be_valid }
  end
end
