class Shelf < ActiveRecord::Base
  belongs_to :reader
  has_many :shelvings
  has_many :copies, through: :shelvings
end
