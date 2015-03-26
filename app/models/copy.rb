class Copy < ActiveRecord::Base
  belongs_to :edition
  has_one :book, through: :edition
end
