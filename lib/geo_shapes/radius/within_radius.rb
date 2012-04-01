module Geo
  class Radius < Point
    class Within
      attr_reader :distance, :point
      
      def initialize point, distance
        self.distance = distance
        self.point = point
      end  
      
      def of? center
        circle = Geo::Radius::Circular.new center, distance
        point.within? circle
      end
    end
  end
end