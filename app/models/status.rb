class Status < ActiveRecord::Base
  belongs_to :reader
  has_many :likes, as: :likeable
  has_many :comments, as: :commentable
end
