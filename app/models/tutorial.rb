class Tutorial < ActiveRecord::Base

  attr_accessible :description, :title, :image_attributes, :videos_attributes
  
  has_one :image, :dependent => :destroy
  
  has_many :videos, :dependent => :destroy
  
  accepts_nested_attributes_for :image,
                                :reject_if => :all_blank,
                                :allow_destroy => true
								
  accepts_nested_attributes_for :videos,
                                :reject_if => :all_blank,
								:allow_destroy => true
								
  validates :title, :presence => true
  validates :slug,  :presence => true, :uniqueness => true
  validates_associated :videos
  
  #extend FriendlyId
  #friendly_id :title, use: :slugged
 
  before_validation :create_slug
  
  
  private

	def create_slug
	  self.slug = self.title.try(:parameterize) if !self.slug.present?
	end
  
  
end
