class Region < ActiveRecord::Base
	attr_accessible :id, :region_name, :description, :parent_id
end