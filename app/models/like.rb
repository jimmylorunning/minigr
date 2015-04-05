class Like < ActiveRecord::Base
  belongs_to :reader
  belongs_to :likeable, polymorphic: true
end
