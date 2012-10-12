require "lib/Radio.rb"
require "test/unit"

class TestPerimetro < Test::Unit::TestCase

  def test_typecheck
      assert_raise( RuntimeError ) { Radio.new('a') }
  end

  def test_negative
      assert_raise( ArgumentError ) { Radio.new(-3) }
  end

end

