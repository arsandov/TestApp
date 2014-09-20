class Picture < ActiveRecord::Base

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#>" },
                    :default_url => "/images/:style/missing.png",
                    :storage => :dropbox,
                    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                    :dropbox_options => {:path => proc {|style| "files/#{id}/#{avatar.original_filename}"}}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
