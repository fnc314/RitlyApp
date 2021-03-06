class UsersController < ApplicationController

  def new
  	@user = User.new()
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
		@user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Ritly!"
      sign_in @user
      redirect_to @user
    else
    	flash[:error] = "Sorry!"
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    render :show
  end

end

  