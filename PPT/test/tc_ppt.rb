require "clase_piedrapapeltijeras"
require "test/unit"

class TestJugarPiedraPapelTijeras < Test::Unit::TestCase
  
  def test_tipodatos_erroneo
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new('cadena')}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new(56)}
    assert_raise(RuntimeError) {JugarPiedraPapelTijeras.new([1,2,3])}
  end
  
end