require 'geo_shapes/shape'

module Geo
  class Circle < Shape
    attr_reader :radius

    proxy_accessor_for :radius

    # creates a radius (center, and distance) from the arguments and uses
    # this radius to define the circle
    def initialize *args
      @radius = GeoMagic::Radius.new *args
    end

    def center
      radius.center
    end      

    def distance
      radius.distance
    end      

    # create random new circle within radius of circle
    # in this case the radius has a vertical and horizontal radius
    def create_within radius
      random_circle = random_within
      diff_distance = Geo::Distance.new(self.center, random_circle.center)
      max_dist_within_circle = self.distance - diff_distance
      Geo::Radius::Circle.new random_circle.center, max_dist_within_circle.random_within
    end

    # Creates a new random circle of same the size within a given distance
    # Use radius method?
    def random_within r = nil
      angle = rand(360)
      r ||= distance
      r = rand(r * 100) / 100
      x = r * cos (angle)
      y = r * sin (angle)
      new [x, y], r 
    end
  end
end