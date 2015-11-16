require_relative "../minitest_helper"
require_relative "bicycle"
require_relative "bicycle_interface_test"
require_relative "bicycle_subclass_test"

class StubbedBike < Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: "painful" }
  end
end

class BicycleTest < Minitest::Test
  include BicycleInterfaceTest

  def setup
    @bicycle = @object = Bicycle.new(tire_size: 0)
    @stubbed_bike = StubbedBike.new
  end

  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) { @bicycle.default_tire_size }
  end

  def test_includes_local_spares_in_spares
    assert_equal(
      {
        tire_size: 0,
        chain: "10-speed",
        saddle: "painful"
      },
      @stubbed_bike.spares
    )
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
