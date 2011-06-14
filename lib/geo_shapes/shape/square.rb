require 'geo_magic/shape/box'

module GeoShape
  class Square < Rectangle
    attr_reader :distance

    include GeoMagic::Calculations

    def initialize point, size
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

    ##
    # Returns coordinates of the lower-left and upper-right corners of a box
    # with the given point at its center. The radius is the shortest distance
    # from the center point to any side of the box (the length of each side
    # is twice the radius).
    #
    # This is useful for finding corner points of a map viewport, or for
    # roughly limiting the possible solutions in a geo-spatial search
    # (ActiveRecord queries use it thusly).
    #
    # See Geocoder::Calculations.distance_between for
    # ways of specifying the point. Also accepts an options hash:
    #
    # * <tt>:units</tt> - <tt>:mi</tt> (default) or <tt>:km</tt>
    #
    def self.bounding_box(point, radius, options = {})
      lat,lon = extract_coordinates(point)
      radius  = radius.to_f
      units   = options[:units] || :mi
      [
        lat - (radius / latitude_degree_distance(units)),
        lon - (radius / longitude_degree_distance(lat, units)),
        lat + (radius / latitude_degree_distance(units)),
        lon + (radius / longitude_degree_distance(lat, units))
      ]
    end


    def point
      @point_a
    end

    def point= point
      @point_a = point
      calculate_b
    end

    def distance= distance
      @distance = distance
      calculate_b
    end
    
    protected 
    
    def calculate_b
      @point_b = @point_a.clone.move_diagonal distance
    end
    
    private

    def arg_check! p1, p2
      raise ArgumentError, "Rectangle must be created from two Points or a Point and a Vector" if !([p1, p2].only_kinds_of?(GeoMagic::Point) || (p1.kind_of?(GeoMagic::Point) && p2.kind_of?(GeoMagic::Vector))
    end    
  end
end