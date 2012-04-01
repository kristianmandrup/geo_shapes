require 'geo_magic/radius'

module Geo
  class Radius < Point
    module Random
      class Points
        attr_reader :radius
        
        def initialize radius, number
          @radius = radius
          @number = number
        end
        
        def within
          radius.random_points_within number
        end
      end
    end
  end
end