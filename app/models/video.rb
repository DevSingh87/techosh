class Video < ActiveRecord::Base
    attr_accessible :tutorial_id, :title, :video_url
	belongs_to :tutorial
	extend FriendlyId
    friendly_id :title
end
