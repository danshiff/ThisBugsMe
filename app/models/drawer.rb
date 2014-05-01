class Drawer < ActiveRecord::Base
	has_many :connections, dependent: :destroy
	has_many :containers, through: :connections

	has_many :users, through: :connections

	def box_count
		total = self.containers.group(:box_num)
		counts = total.values
		key = counts[0]
		counts.each do |c|
			if c != key
				return false
			end
		end
		return true
	end
end
