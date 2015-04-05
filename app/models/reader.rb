class Reader < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tags
  has_many :shelves
  has_many :copies, through: :shelves
  has_many :follow_relationships, class_name: "FollowRelationship",
                        foreign_key: "follower_id",
                        dependent: :destroy
  has_many :following, through: :follow_relationships, source: :followed
  has_many :followed_relationships, class_name: "FollowRelationship",
                        foreign_key: "followed_id",
                        dependent: :destroy
  has_many :followers, through: :followed_relationships, source: :follower
  has_many :likes
end
