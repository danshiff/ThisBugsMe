class Container < ActiveRecord::Base
	belongs_to :connection

	has_one :drawer, through: :connection
	has_one :user, through: :connection

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
