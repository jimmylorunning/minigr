class Copy < ActiveRecord::Base
  belongs_to :edition
  has_one :book, through: :edition
  has_many :taggings
  has_many :tags, through: :taggings
  belongs_to :shelf
  has_one :reader, through: :shelf
  has_one :review
  has_one :rating
  has_many :copy_statuses
end
