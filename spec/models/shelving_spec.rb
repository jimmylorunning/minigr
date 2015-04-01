require 'rails_helper'

RSpec.describe Shelving, type: :model do
  it { should belong_to :shelf }
  it { should belong_to :copy }
end
