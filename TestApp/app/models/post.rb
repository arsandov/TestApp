class Post < ActiveRecord::Base
  has_many :comments
  #has_many :tags, limit: 5
  validates :title, presence: true
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#>" },
                    :default_url => "/images/:style/missing.png",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :dropbox_options => {:path => proc {|style| "files/#{id}/#{avatar.original_filename}"}}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
