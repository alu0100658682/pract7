require "./lib/gcd.rb"

class Racional

	include Comparable

	attr_accessor :numerador, :denominador

	def initialize(numerador, denominador)
		@numerador = numerador
		@denominador = denominador
	end

	def num
		@numerador
	end

	def denom
		@denominador
	end

	def reduce
		a = @numerador
		b = @denominador
		
		if a < b
			x = a
		else
			x = b
		end

		reducida = false

	while (x>1 && !reducida) do
		if (a%x == 0) && (b%x == 0)
			a = a/x
			b = b/x
			reducida = true
		else
			x = x - 1
		end
	end

		@numerador = a
		@denominador = b
		self.to_s
	end
####String
	def to_s
		"#{@numerador}/#{@denominador}"
	end
#####Flotante
	def to_f
		(numerador.to_f/denominador.to_f)
	end
####=
	def ==(fr2)
		return @numerador = fr2.numerador && @denominador = fr2.denominador if fr2.instance_of? Racional 
		false
	end

####Absoluto
	def abs
		a = @numerador
		b = @denominador

		if a < 0
			a = a * -1
		end
		
		if b < 0
			b = b * -1
		end
		
		@numeradorumerador = a 
		@denominador = b
	end

####Reciproca
	def reciprocal
		Racional.new(@denominador, @numerador)
	end

####Opuesta
	def -@
		Racional.new(-@numerador, -@denominador)
	end

#####Suma
	def +(fr2)
		denominador = @denominador * fr2.denominador
		Racional.new(((denominador/@denominador) * @numerador) + ((denominador/fr2.denominador) * fr2.numerador), denominador).reduce
	end	

#####Resta	
	def -(fr2)
		denominador = @denominador * fr2.denominador
		Racional.new(((denominador/@denominador) * @numerador) - ((denominador/fr2.denominador) * fr2.numerador), denominador).reduce	
	end

#####Producto
	def *(fr2)
		Racional.new(@numerador * fr2.numerador, @denominador * fr2.denominador).reduce
	end

#####Division
	def /(fr2)
		Racional.new(@numerador * fr2.denominador, @denominador * fr2.numerador).reduce
	end

#####Resto
	def %(fr2)
		Racional.new(@numerador % @denominador, fr2.numerador % fr2.denominador).reduce
	end

	module Comparable
	        def Comparable.<=>(fr2)
                	return Racional.new(@numerador, @denominador) <=> Racional.new(fr2.numerador, fr2.denominador)
	        end
end

end	


