module Geo
  class Rectangle < Shape

# create rectangle within radius of point
# in this case the radius has a vertical and horizontal radius
def create_within radius
  GeoRadius::Rectangular.create_from self
end
