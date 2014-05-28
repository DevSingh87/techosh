class Tutorial < ActiveRecord::Base

  
  attr_accessible :description, :title, :images_attributes

  has_one :image, :dependent => :destroy
  validates :title, :presence => true
  validates :slug,  :presence => true, :uniqueness => true
  
  before_validation :create_slug
  
  
  private

	def create_slug
	  self.slug = self.title.try(:parameterize) if !self.slug.present?
	end
  
  public
  def to_param
	  slug
	end
end
