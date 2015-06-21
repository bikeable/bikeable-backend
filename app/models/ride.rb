class Ride < ActiveRecord::Base
  belongs_to :biker
  before_save :make_polyline_array

  serialize :lat_lng, JSON
  serialize :route_summary, JSON

  validates_uniqueness_of :activity_id

  scope :between_dates, ->(begin_date, end_date) {
    where("datetime between ? and ?", begin_date, end_date)
  }

  def self.all_polylines
    array =[]
    self.all.each do |ride|
      array << ride.lat_lng_array
    end
    array
  end

  def lat_lng_array
    array = []
    self.waypoints.each do |waypoint|
      array << [waypoint.latitude, waypoint.longitude]
    end
    array
  end

  def make_polyline_array
    return false if self.polyline.blank?
    polyline = self.polyline
    array = Polylines::Decoder.decode_polyline(polyline)
    self.route_summary = array
  end
end
