class Location < ActiveRecord::Base
	has_many :patients
end