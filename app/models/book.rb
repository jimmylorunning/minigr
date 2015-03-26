class Book < ActiveRecord::Base
  has_many :editions, dependent: :destroy
end
