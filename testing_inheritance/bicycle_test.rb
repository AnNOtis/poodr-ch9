require_relative "../minitest_helper"
require_relative "bicycle"
require_relative "bicycle_interface_test"
require_relative "bicycle_subclass_test"

class BicycleTest < Minitest::Test
  include BicycleInterfaceTest

  def setup
    @bicycle = @object = Bicycle.new(tire_size: 0)
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) { @bicycle.default_tire_size }
  end
end

class RoadBicycleTest < Minitest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @road_bicycle = @object = RoadBicycle.new(tape_color: "red")
  end

  def test_puts_color_in_local_spares
    assert_equal "red", @road_bicycle.spares[:tape_color]
  end
end
