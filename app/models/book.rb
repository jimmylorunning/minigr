class Book < ActiveRecord::Base
  has_many :editions, dependent: :destroy
  has_many :copies, through: :editions, dependent: :destroy
end
