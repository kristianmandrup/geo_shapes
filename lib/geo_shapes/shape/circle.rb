require 'geo_shape/shape'

module GeoShape
  class Circle < AbstractShape
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