require 'rails_helper'

RSpec.describe Friendship, type: :model do
  it { should belong_to(:reader) }
  it { should belong_to(:friend) }
end
