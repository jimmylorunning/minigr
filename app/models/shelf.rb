class Shelf < ActiveRecord::Base
  belongs_to :reader
  has_many :copies
end
