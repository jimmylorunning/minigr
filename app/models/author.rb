class Author < ActiveRecord::Base
  has_many :credits
  has_many :books, through: :credits
end
