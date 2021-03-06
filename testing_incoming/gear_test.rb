require_relative "../minitest_helper"
require_relative "Gear"
require_relative "diameterizable_interface_test"

class DiameterizableDoubleTest < Minitest::Test
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterizableDouble.new
  end
end

class DiameterizableDouble
  def width
    10
  end
end

class GearTest < Minitest::Test
  def test_calculates_gear_inches
    gear = Gear.new(
      chainring: 44,
      cog: 11,
      wheel: DiameterizableDouble.new
    )

    assert_in_delta 40, gear.gear_inches, 0.01
  end
end
