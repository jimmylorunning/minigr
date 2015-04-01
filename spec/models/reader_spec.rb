require 'rails_helper'

RSpec.describe Reader, type: :model do
  it { should have_many(:copies) }
  it { should have_many(:shelves) }
  it { should have_many(:categories) }
end
