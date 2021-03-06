module Geo
  class Radius < Point
    class Circular < Geo::Radius
      attr_accessor :distance
      
      def initialize center, distance
        super center        
        @distance = Geo::Distance.new distance
      end  

      def multiply arg       
        circle = Geo::Radius::Circular.new center, distance.clone
        circle.multiply! arg
      end

      def multiply! arg       
        check_numeric! arg
        self.distance.distance *= arg
        self
      end

      alias_method :radius, :distance
      alias_method :radius=, :distance=

      def to_s
        "#{super}, #{distance}"
      end

      # Factory
      def random_point_within
        max_radius_rad = distance.distance
        range = normalize max_radius_rad

        q = rand(range) * PI_2
        r = Math.sqrt(rand(range))
        dlong = denormalize range * r * Math.cos(q)
        dlat = denormalize range * r * Math.sin(q)

        Geo::Point.new @center.latitude + dlat, @center.longitude + dlong
      end

      def random_points_within number
        Array.new(number) { random_point_within }
      end    
    end
  end
end