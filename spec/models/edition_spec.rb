require 'rails_helper'

RSpec.describe Edition, type: :model do
  it { should belong_to(:book).class_name('Book') }
  it { should have_many(:copies).class_name('Copy') }
end
