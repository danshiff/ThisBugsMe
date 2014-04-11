class User < ActiveRecord::Base
	has_many :connections
	has_many :drawers, through: :connections
end
