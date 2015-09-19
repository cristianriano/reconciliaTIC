module UsersHelper

	def icon_for(user, size = 150)
		if !user.nil?
			if user.picture?
			  image_tag(user.picture.url, width: size, height: size, alt: user.name, class: "gravatar")
			end
		end
		image_tag("no_profile.jpg", width: size, height: size, alt: "Sin imagen", class: "gravatar")
	end
end
