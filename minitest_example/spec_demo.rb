require "minitest/autorun"

describe "Minitest Demo" do
  describe "demo assert equal" do
    it do
      assert_equal false, "Some String".nil?
    end
  end

  describe "demo skip" do
    it do
      skip "asldkfjlewjrojtqiweoa"
    end
  end
end
