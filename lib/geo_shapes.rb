require 'party_proxy'

class Module
  include Party::Proxy
end 

require 'geo_shapes/shape/circle'
require 'geo_shapes/shape/rectangle'
require 'geo_shapes/shape/square'

# setup constant alias
Geo::Rect = Geo::Rectangle
