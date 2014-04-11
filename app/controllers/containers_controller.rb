class ContainersController < ApplicationController

	def new
		@box = Container.new
		@box.connection_id = session[:record]
		@box.box_num = params[:boxnum]
		@box.save
	end

	def update
		@box = Container.find_by(id: params[:id])
		@box.num_bugs = params[:container][:num_bugs]
		@box.save
		redir = params[:commit]
		if redir == "Add another box"
			redirect_to "/record/#{@box.connection_id}/newbox/#{@box.box_num + 1}"
		else
			redirect_to "/drawers/#{@box.drawer.name}"
		end
	end

end