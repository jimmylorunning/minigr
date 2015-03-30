require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should have_many(:authors).class_name('Author') }
  it { should have_many(:editions).class_name('Edition') }
  it { should have_many(:copies).class_name('Copy') }
end
