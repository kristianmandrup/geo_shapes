module GeoShape
  class AbstractShape
    # is point within the square
    def within? point
      raise "Subclass should implement this"
    end
  end
end