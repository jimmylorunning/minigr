class FollowRelationship < ActiveRecord::Base
  belongs_to :follower, class_name: "Reader"
  belongs_to :followed, class_name: "Reader"
  has_many :likes, as: :likeable
end
