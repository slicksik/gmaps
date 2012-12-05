module LocationsHelper
	 	def lat_lng
  @lat_lng ||= session[:lat_lng] ||= get_geolocation_data_the_hard_way
end
end
