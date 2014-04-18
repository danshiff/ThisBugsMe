class ContainersController < ApplicationController

	def new
		@box = Container.new
		@box.connection_id = session[:record]
		@box.box_num = params[:boxnum]
		@box.save
		@types = Container.gettypes()
	end

	def update
		@box = Container.find_by(id: params[:id])
		@box.num_bugs = params[:container][:num_bugs]
		@box.box_type = params[:container][:box_type]
		@box.min_unique = params[:container][:min_unique]
		@box.max_unique = params[:container][:max_unique]
		@box.uniq_labels = params[:container][:uniq_labels]
		@box.typed_labels = params[:container][:typed_labels]
		@box.handwritten_labels = params[:container][:handwritten_labels]
		@box.unsure_labels = params[:container][:unsure_labels]
		@box.obstructed_labels = params[:container][:obstructed_labels]
		@box.damaged_labels = params[:container][:damaged_labels]
		@box.biggest_bug = params[:container][:biggest_bug]
		@box.smallest_bug = params[:container][:smallest_bug]
		@box.in_box_label = params[:container][:in_box_label]
		@box.on_box_label = params[:container][:on_box_label]
		@box.near_box_label = params[:container][:near_box_label]
		@box.save
		redir = params[:commit]
		if redir == "Add another box"
			redirect_to "/record/#{@box.connection_id}/newbox/#{@box.box_num + 1}"
		else
			redirect_to "/drawers/#{@box.drawer.name}"
		end
	end

end