class Video < ActiveRecord::Base
    attr_accessible :tutorial_id, :title, :video_url
	
	belongs_to :tutorial
	
	scope :next, lambda {|id| where("id > ?",id).order("id ASC") }
	scope :previous, lambda {|id| where("id < ?",id).order("id DESC") }
	
	validates :title, :video_url,
	          :presence => true
	
	#extend FriendlyId
    #friendly_id :title, use: :slugged
	
	before_validation :create_slug
    
    def next
      Video.next(self.id).first
    end

    def previous
      Video.previous(self.id).first
    end
	
	private

	def create_slug
	  self.slug = self.title.try(:parameterize) if !self.slug.present?
	end
end
