class User < ApplicationRecord
	 geocoded_by :address
     after_validation :geocode

     
     #@locations = Location.near([current_user.latitude, current_user.longitude], 50, :order => :distance)
end
