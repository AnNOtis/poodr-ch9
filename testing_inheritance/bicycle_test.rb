require_relative "../minitest_helper"
require_relative "bicycle"
require_relative "bicycle_interface_test"

class BicycleTest < Minitest::Test
  include BicycleInterfaceTest

  def setup
    @bicycle = @object = Bicycle.new({tire_size: 0})
  end
end

class RoadBicycleTest < Minitest::Test
  include BicycleInterfaceTest

  def setup
    @road_bicycle = @object = RoadBicycle.new
  end
end
