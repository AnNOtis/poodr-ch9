module BicycleInterfaceTest
  def test_responds_to_size
    assert_respond_to @object, :size
  end

  def test_responds_to_chain
    assert_respond_to @object, :chain
  end

  def test_responds_to_tire_size
    assert_respond_to @object, :tire_size
  end

  def test_responds_to_spares
    assert_respond_to @object, :spares
  end

  def test_responds_to_default_tire_size
    assert_respond_to @object, :default_tire_size
  end

  def test_responds_to_post_initialize
    assert_respond_to @object, :post_initialize
  end

  def test_responds_to_local_spares
    assert_respond_to @object, :local_spares
  end

  def test_responds_to_default_chain
    assert_respond_to @object, :default_chain
  end
end
