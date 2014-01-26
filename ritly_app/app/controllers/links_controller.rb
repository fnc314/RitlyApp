class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
		ran_str = SecureRandom.urlsafe_base64(15)
		link = Link.create(:url => params["link"]["url"], :random_string => ran_str)
		redirect_to "/links/#{link.random_string}"
	end

	def show
		@link = Link.find_by(:random_string => params[:random_string])
	end

	def delete
		@link = Link.find_by(:random_string => params[:random_string])
		@link.destroy
		redirect_to "/links"
	end

	#private #model methods (maybe?)

	

	#def add_http #add http:// to url submitted

end
