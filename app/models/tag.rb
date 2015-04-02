class Tag < ActiveRecord::Base
  belongs_to :reader
  has_many :taggings
  has_many :copies, through: :taggings
end
