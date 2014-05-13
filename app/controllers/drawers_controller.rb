class DrawersController < ApplicationController

	def index
		if session[:user] == nil
			redirect_to '/sessions/new'
		else
			@drawers = Drawer.order("name asc")
			render 'index'
		end
	end

	def show
		@drawer = Drawer.find_by(name: params[:id])
		@connections = @drawer.connections.includes(:user, :containers)
	end

	def new
		@drawer = Drawer.new
	end

	def create
		@drawer = Drawer.new
		@drawer.name = params[:drawer][:name]
		@drawer.photo_url = params[:drawer][:photo_url]
		@drawer.save
		redirect_to "/drawers/#{@drawer.name}"
	end

	def new_record
		@connection = Connection.new
		@connection.drawer_id = Drawer.find_by(name: params[:name]).id
		@connection.user_id = session[:user]
		@connection.save
		session[:record] = @connection.id
		redirect_to "/record/#{@connection.id}/newbox/1"
	end

	def jsonify
		@drawers = Drawer.all.select(:id.to_s, :name).to_json
		@users = User.all.select(:id.to_s, :name).to_json
		@records = Connection.all.select(:id, :user_id, :drawer_id).to_json
		@boxes = Container.all.to_json

		render json:  "{ \"drawers\" : #{@drawers}, \"users\" : #{@users}, \"records\" : #{@records}, \"boxes\" : #{@boxes} }"
	end

end