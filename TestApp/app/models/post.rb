class Post < ActiveRecord::Base
  has_many :comments
  #has_many :tags, limit: 5
  validates :title, presence: true
end
