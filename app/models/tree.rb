class Tree < ActiveRecord::Base
	attr_accessible :common_name, :latin_name, :description, :id
end