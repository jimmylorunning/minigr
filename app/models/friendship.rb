class Friendship < ActiveRecord::Base
  belongs_to :reader
  belongs_to :friend, class_name: "Reader"
end
