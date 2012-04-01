module Geo
  class Radius < Point
    module Random
      module Radiant 
        def get_random_radiant range
          self.class.get_random_radiant range
        end

        def self.get_random_radiant range
          rand(range * 2) - range
        end
      end
    end
  end
end