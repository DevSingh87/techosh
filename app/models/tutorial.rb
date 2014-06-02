class Tutorial < ActiveRecord::Base

  attr_accessible :description, :title, :images_attributes

  has_many :images, :dependent => :destroy
  has_many :videos, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  validates :title, :presence => true
  validates :slug,  :presence => true, :uniqueness => true
  
  extend FriendlyId
  friendly_id :title
 
end
