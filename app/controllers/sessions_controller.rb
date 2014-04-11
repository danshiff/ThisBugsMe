class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(name: params[:name])
		if user == nil
			flash[:notice] = "No such user"
			render 'new'
		else
			session[:user] = user.id
			redirect_to root_url
		end
	end

	def destroy
		session[:user] = nil
		redirect_to root_url
	end

end