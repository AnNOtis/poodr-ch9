require "minitest/autorun"

class TestDemo < Minitest::Test
  def test_demo_assset_equal
    assert_equal false, "Some String".nil?
  end

  def test_demo_skip
    skip "asldkfjlewjrojtqiweoa"
  end
end
