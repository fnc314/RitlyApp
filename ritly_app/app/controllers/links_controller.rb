class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def new
		@link = Link.new
	end

	def create
  	if params["link"]["random_string"] == ""
      ran_str = SecureRandom.urlsafe_base64(15)
      link = Link.create(:url => params["link"]["url"], :random_string => ran_str)
      redirect_to "/links/#{link.id}"
    else
    	if Link.code_is_unique?(params[:link][:random_string])
      	link = Link.create(url: params["link"]["url"], random_string: params["link"]["random_string"])
      	redirect_to "/links/#{link.id}"
    	else
      	render :partial => "sorry"
      end
    end
	end

	def show
		@link = Link.find(params[:id])
	end

	def delete
		@link = Link.find(params[:id])
		@link.destroy
		redirect_to "/links"
	end

end