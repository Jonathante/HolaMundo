
class JugarPiedraPapelTijeras
  
  def initialize(jugada)
    
    @derrotado_por = {:piedra => :tijeras, :papel => :piedra, :tijeras => :papel}
    @jugadas = @derrotado_por.keys
    
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless (jugada.class == String)
    @jugada_jugador = jugada.to_sym
    
    raise "Debes introducir una jugada valida: #{@jugadas.join(', ')}" unless @jugadas.include? @jugada_jugador
    
    jugar
    
  end
  
  def jugar()
    
    jugada_ordenador = @jugadas.sample
    
    puts "Has jugado: #{@jugada_jugador}"
    puts "El PC ha jugado: #{jugada_ordenador}"
    
    if (@derrotado_por[jugada_ordenador] == @jugada_jugador)
      respuesta = "Ha ganado el PC. #{jugada_ordenador.capitalize} gana a #{@jugada_jugador}"
    elsif (@jugada_jugador == jugada_ordenador)
      respuesta = "Empate. Los dos han sacado #{@jugada_jugador}"
    else
      respuesta = "Has ganado. #{@jugada_jugador.capitalize} gana a #{jugada_ordenador}"
    end
    
    puts "Resultado: #{respuesta}"
    
  end
  
end