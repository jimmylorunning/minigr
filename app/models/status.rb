class Status < ActiveRecord::Base
  belongs_to :reader
  has_many :likes, as: :likeable
end
