class Drawer < ActiveRecord::Base
	has_many :connections, dependent: :destroy

	has_many :users, through: :connections
end
