class Person
  def initialize(cloth)
    @cloth = cloth
  end

  def looks
    if @cloth.price > 100
      "Good"
    else
      "Bad"
    end
  end
end
