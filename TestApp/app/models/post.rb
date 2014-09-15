class Post < ActiveRecord::Base
  has_many :comments
  #has_many :tags, limit: 5
  validates :title, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :url => "/images",  :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
