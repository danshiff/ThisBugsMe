class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		name = params[:user][:name]
		if User.find_by(name: name)
			@user = User.new
			flash[:notice] = "Name taken"
			render 'new'
			flash[:notice] = nil
		else
			@user = User.new
			@user.name = name
			@user.save
			session[:user] = @user.id
			redirect_to root_url
		end
	end

end