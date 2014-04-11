class Container < ActiveRecord::Base
	belongs_to :connection

	has_one :drawer, through: :connection
	has_one :user, through: :connection
end
