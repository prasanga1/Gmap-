class Location < ApplicationRecord
	
	geocoded_by :address
	reverse_geocode :latitude, :longitude
    after_validation :reverse_geocode
    

    def nearbys(radius)
    	radius = radius. to_i*1000
    	User.where("ST_Distance(position, ?, false) <= ? ", position, radius ).where("id<> ?", position, radius).where("id<>?", id)

    end
end
