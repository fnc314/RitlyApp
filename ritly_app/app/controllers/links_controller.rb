class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		if params["link"]["random_string"].nil?
			ran_str = SecureRandom.urlsafe_base64(15)
			link = Link.create(:url => params["link"]["url"], :random_string => ran_str)
			redirect_to "/links/#{link.random_string}"
		else
			if Link.code_is_unique?(params["link"]["random_string"])
				link = Link.create(:url => params["link"]["url"], :random_string => params["link"]["random_string"])
				redirect_to "/links/#{link.random_string}"
			else
				redirect_to "/links/sorry"
			end
		end
	end

	def show
		@link = Link.find_by(:random_string => params[:random_string])
	end

	def delete
		@link = Link.find_by(:random_string => params[:random_string])
		@link.destroy
		redirect_to "/links"
	end

end
