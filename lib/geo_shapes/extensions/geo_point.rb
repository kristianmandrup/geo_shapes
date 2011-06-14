module Geo
  class Rectangle < Shape

def upper_left
  @upper_left ||= GeoPoint.new left_lat(point_a, point_b), top_long(point_a, point_b)
end

def lower_left
  @lower_left ||= GeoPoint.new left_lat(point_a, point_b), bot_long(point_a, point_b)
end

def lower_right
  @lower_right ||= GeoMagic::Point.new right_lat(point_a, point_b), bot_long(point_a, point_b)
end

def upper_right
  @upper_right ||= GeoMagic::Point.new right_lat(point_a, point_b), top_long(point_a, point_b)
end
