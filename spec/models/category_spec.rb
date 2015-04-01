require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to(:reader) }
  it { should have_many(:copies) }
end
