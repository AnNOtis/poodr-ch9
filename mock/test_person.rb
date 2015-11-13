require_relative "../minitest_helper"
require_relative "person"

describe "Person", :looks do
  describe "with expensive cloth" do
    before do
      @cloth = Minitest::Mock.new
      @cloth.expect :price, 90
    end

    it "returns Good" do
      @person = Person.new(@cloth)

      assert "Good", @person.looks
      @cloth.verify
    end
  end
end
