require 'rails_helper'

RSpec.describe Shelf, type: :model do
  it { should belong_to(:reader) }
  it { should have_many(:shelvings) }
  it { should have_many(:copies) }
end
