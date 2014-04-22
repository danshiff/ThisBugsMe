class Container < ActiveRecord::Base
	belongs_to :connection

	has_one :drawer, through: :connection
	has_one :user, through: :connection

	before_create :clear_num

	def clear_num
		num = self.box_num
		iden = self.id

		old_boxes = self.connection.containers.where("box_num = ?", num)
		old_boxes.each do |b|
			b.destroy
		end
	end

	def Container.gettypes 
		return ['1x1', '2x1', '2x2', '2x3', '2x4', '2x6']
	end

	def Container.getsizes
		return ['1mm', '3mm', '1cm', '3cm', '10cm', '30cm']
	end

	def Container.getlabels
		return ['None', 'Handwritten', 'Typed']
	end
end
