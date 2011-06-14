require 'spec_helper'

describe GeoShape::Square do
  context 'a 5.km square' do
    before :each do
      @rect = Geo::Square.new @center, 5.km.nw_of(@center)
    end

    describe 'Class' do
      it "is a GeoMagic::Square" do
        @rect.should be_a(GeoMagic::Square)
      end
    end
  end
end