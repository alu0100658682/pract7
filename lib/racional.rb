require "./lib/gcd.rb"

class Racional

	include Comparable

	attr_accessor :n, :d

	def initialize(n, d)
		@numerador = n
		@denominador = d
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
		(n.to_f/d.to_f)
	end
####=
	def ==(fr2)
		return @numerador = fr2.n && @denominador = fr2.d if fr2.instance_of? Racional 
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
		d = @denominador * fr2.d
		Racional.new(((d/@denominador) * @numerador) + ((d/fr2.d) * fr2.n), d).reduce
	end	

#####Resta	
	def -(fr2)
		d = @denominador * fr2.d
		Racional.new(((d/@denominador) * @numerador) - ((d/fr2.d) * fr2.n), d).reduce	
	end

#####Producto
	def *(fr2)
		Racional.new(@numerador * fr2.n, @denominador * fr2.d).reduce
	end

#####Division
	def /(fr2)
		Racional.new(@numerador * fr2.d, @denominador * fr2.n).reduce
	end

#####Resto
	def %(fr2)
		Racional.new(@numerador % @denominador, fr2.n % fr2.d).reduce
	end

	module Comparable
	        def Comparable.<=>(fr2)
                	return Racional.new(@numerador, @denominador) <=> Racional.new(fr2.n, fr2.d)
	        end
end

end	


