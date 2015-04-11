class CopyStatus < ActiveRecord::Base
  belongs_to :copy
  has_many :likes, as: :likeable
  has_many :comments, as: :commentable
end
