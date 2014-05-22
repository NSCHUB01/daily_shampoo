class Post < ActiveRecord::Base

  belongs_to :user#, :as => :owner

  has_many :comments

  has_many :users, :through => :comments#, :as :commentors

  has_attached_file :image_file
  validates_attachment_content_type :image_file, :content_type => /\Aimage\/.*\Z/

end
