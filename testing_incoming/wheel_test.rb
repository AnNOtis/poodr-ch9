require_relative "../minitest_helper"
require_relative "wheel"
require_relative "diameterizable_interface_test"

class WheelTest < Minitest::Test
  include DiameterizableInterfaceTest

  def setup
    @object = @wheel = Wheel.new(26, 1.5)
  end

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta 29, wheel.width, 0.01
  end
end
