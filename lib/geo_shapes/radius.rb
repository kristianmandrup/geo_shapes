require 'geo_shapes/radius/within_radius'
require 'geo_shapes/radius/random/radiant'

module Geo
  class Radius < Point
    def initialize arg
      raise ArgumentError, "Radius takes an argument with enough info to create a center point" if !arg
      super arg
    end  

    def self.types
      [:circular, :rectangular, :square]
    end

    types.each do |name|
      class_eval %{
        def self.create_#{name} center, distance
          Geo::Radius::#{name.to_s.classify}.new center, distance
        end
      }
    end

    def center
      Geo::Point.new latitude, longitude
    end

    def center= arg
      point = arg.extend(Geo::Point::Conversion).to_point
      latitude = point.first
      longitude = point.last
    end

    def double
      multiply 2
    end

    def double!
      multiply! 2
    end

    def halve
      multiply 0.5      
    end

    def halve!
      multiply! 0.5      
    end

    def multiply arg
      raise "Must be implemented by subclass. Should multiply size by a given factor"
    end

    def multiply! arg
      raise "Must be implemented by subclass. Should multiply size by a given factor"
    end

    # select all points within radius
    def select_within points
      raise "Must be implemented by subclass"
    end

    # reject all points within radius
    def reject_within points
      raise "Must be implemented by subclass"
    end

    def random_point_within
      raise "Must be implemented by subclass"
    end

    def random_points_within number
      raise "Must be implemented by subclass"      
    end

    # allows for DSL
    # random_points(3).within
    def random_points number
      RandomPoints.new self, number
    end

    protected
    
    def check_numeric! arg
      raise ArgumentError, "Argument must be Numeric" if !arg.is_a? Numeric
    end

    include RandomRadiant
  end
end


require 'geo_shapes/radius/random/points'
require 'geo_shapes/radius/square'
require 'geo_shapes/radius/circular'
require 'geo_shapes/radius/rectangular'
