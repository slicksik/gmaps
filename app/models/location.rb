class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :city_id, :bio
  belongs_to :city
  accepts_nested_attributes_for :city
  
  
  acts_as_gmappable :process_geocoding => false

  geocoded_by :address
  after_validation :geocode
  
  def gmaps4rails_address
  address
  end
  def gmaps4rails_infowindow
"<p><a href =/locations/#{id}> <h4>#{name}</h4> </a></p>" << "<p>#{address}</p>"

end

 def gmaps4rails_title
" #{name}"   
 end


  
end
