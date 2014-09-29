class User < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode

#  def distance_calculation
#    //緯度と経度から距離計算 a:基準、b:現在地//緯度と経度から距離計算 a:基準、b:現在地
#    b_latitude = @users.last.latitude
#    b_longitude = @users.last.longitude
#  end
end