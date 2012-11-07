class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name
  
  acts_as_gmappable

  reverse_geocoded_by :latitude, :longitude,
  :address => :location
after_validation :reverse_geocode
  
  def gmaps4rails_address
  address
  end
  def gmaps4rails_infowindow
"<p>#{name}</p>" << "<p>#{address}</p>"  

end

 def gmaps4rails_title
" #{name}"   
 end


  
end
