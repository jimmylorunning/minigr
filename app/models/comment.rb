class Comment < ActiveRecord::Base
  belongs_to :reader
  belongs_to :commentable, polymorphic: true
end
