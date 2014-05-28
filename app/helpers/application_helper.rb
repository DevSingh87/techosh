module ApplicationHelper
	 #Meta tags helper methods
	def meta_title(title)
	  content_for(:title, title)
	end

	def meta_description(description)
	  content_for(:meta_description, description)
	end

	def meta_keywords(keywords)
	  content_for(:meta_keywords, keywords)
	end

	def meta_author(author)
	  content_for(:meta_author, author)
	end
	#Face OpenGraph Tags
	def meta_og_title(title)
	  content_for(:meta_og_title, title)
	end
	
	def meta_og_url(url)
	  content_for(:meta_og_url, url)
	end
	
	
end
