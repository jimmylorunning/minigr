require 'rails_helper'

RSpec.describe FollowRelationship, type: :model do
  it { should belong_to(:follower).class_name "Reader" }
  it { should belong_to(:followed).class_name("Reader") }
end
