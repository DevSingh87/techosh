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
	
	
	def link_to_add_fields(name, f, association)
		new_object = f.object.send(association).klass.new
		id = new_object.object_id
		fields = f.fields_for(association, new_object, child_index: id) do |builder|
		  render(association.to_s.singularize + "_fields", f: builder)
		end
		link_to(name, '#', class: "add_fields btn btn-success", data: {id: id, fields: fields.gsub("\n", "")})
	  end
	
end
