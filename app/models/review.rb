class Review < ActiveRecord::Base
  belongs_to :copy
  has_one :reviewer, through: :copy,
                     source: :reader,
                     class_name: "Reader",
                     foreign_key: :reader_id
  has_many :likes, as: :likeable
end
