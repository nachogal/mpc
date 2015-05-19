module PagesHelper

	def team_image_path(user)
		"team/#{user.username.downcase}.jpg"
	end

end
