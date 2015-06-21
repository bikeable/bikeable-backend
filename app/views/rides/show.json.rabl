object @ride
attributes :elevation, :name, :route_summary
node(:distance) { |ride| ride.distance.round(2) }
node(:avg_speed) {|ride| ride.avg_speed.round(2)}
node(:biker) {|ride| Biker.find(ride.biker_id).name}
