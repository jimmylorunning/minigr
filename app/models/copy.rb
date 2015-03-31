class Copy < ActiveRecord::Base
  belongs_to :edition
  has_one :book, through: :edition
  has_many :shelvings
  has_many :shelves, through: :shelvings
  belongs_to :category
end
