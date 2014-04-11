class Connection < ActiveRecord::Base
	belongs_to :user
	belongs_to :drawer

	has_many :containers
end
