module Geo
  class Rectangle < Shape

def vector
  GeoVector.new(point_a, point_b)
end

def vector_distance
  GeoVector.new(point_a, point_b).vector_distance
end
