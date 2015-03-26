class Edition < ActiveRecord::Base
  belongs_to :book
  has_many :copies, dependent: :destroy
end
