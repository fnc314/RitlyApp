class GoController < ApplicationController

	def index
		
	end

	def redirect
		link = Link.find_by(:random_string => params[:random_string])
		x = link.url
		if x.match("http://") == nil
			redirect_to "http://" + "#{x}"
		else
			redirect_to "#{x}"
		end
	end

	def preview
		@link = Link.find_by(:random_string => params[:random_string])
	end

end
