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

	def to_s
		"#{@numerador}/#{@denominador}"
	end

	def to_f
		(numerador.to_f/denominador.to_f)
	end

	def ==(other)
		return @numerador = other.numerador && @denominador = other.denominador if other.instance_of? Racional 
		false
	end

	def abs
		a = @numerador
		b = @denominador

		if a < 0
			a = a * -1
		end
		
		if b < 0
			b = b * -1
		end
		
		@numerador = a 
		@denominador = b
	end

	def reciprocal
		Racional.new(@denominador, @numerador)
	end

	def -@
		Racional.new(-@numerador, -@denominador)
	end

	def +(other)
		denominador = @denominador * other.denominador
		Racional.new(((denominador/@denominador) * @numerador) + ((denominador/other.denominador) * other.numerador), denominador).reduce
	end	
	
	def -(other)
		denominador = @denominador * other.denominador
		Racional.new(((denominador/@denominador) * @numerador) - ((denominador/other.denominador) * other.numerador), denominador).reduce	
	end

	def *(other)
		Racional.new(@numerador * other.numerador, @denominador * other.denominador).reduce
	end

	def /(other)
		Racional.new(@numerador * other.denominador, @denominador * other.numerador).reduce
	end

	def %(other)
		Racional.new(@numerador % @denominador, other.numerador % other.denominador).reduce
	end

	


	def <=>(other)
		return Racional.new(@numerador, @denominador) <=> Racional.new(other.numerador, other.denominador)
	end
end

end	


