class ConnectionsController < ApplicationController

	def destroy
		connection = Connection.find_by(id: params[:id])
		drawer_num = connection.drawer.name
		connection.destroy
		redirect_to "/drawers/#{drawer_num}"
	end
end