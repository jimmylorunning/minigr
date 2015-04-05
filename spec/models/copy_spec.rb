require 'rails_helper'

RSpec.describe Copy, type: :model do
  it { should belong_to(:edition) }
  it { should have_one(:book) }
  it { should belong_to(:shelf) }
  it { should have_one(:review) }
  it { should have_one(:reader) }
end
