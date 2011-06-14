require 'geo_shapes/shape'

module GeoShape  
  # A Box is any rectangular shape  
  class Box < AbstractShape
    include Geo::Calculations

    # Takes either:
    # - two points
    # - a point, a distance and a direction
    # - a point and radius
    def initialize args*
      raise ArgumentError, "First argument must be a GeoPoint" if !point.kind_of?(GeoPoint)
      raise ArgumentError, "Second argument must be a GeoDistance or a GeoVector" if !size.any_kind_of?(GeoDistance, GeoVector)
      @point_a = point
          
      if size.kind_of?(GeoMagic::Distance)
        @distance = size
        calculate_b
      else
        raise "Square shape initializer must be fixed to alternatively accept a Vector arg"        
      end
    end
  end
end