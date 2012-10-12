class Radio

   def initialize (num)
       @perimetro = num
       @pi = 3.14
   end

   def calculo
       @radio = (@perimetro) / (@pi*2)
       puts "Perimetro: #{@perimetro}"
       puts "Radio: #{@radio}"
   end
       
end

#main
      perimetro = ARGV[0].to_f
      if perimetro == 0	
perimetro = 31.4
      end
      calc = Radio.new(perimetro)
      calc.calculo