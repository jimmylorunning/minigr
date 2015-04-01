class FollowRelationship < ActiveRecord::Base
  belongs_to :follower, class_name: "Reader"
  belongs_to :followed, class_name: "Reader"
end
