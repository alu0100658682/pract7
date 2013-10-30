

module Comparable
	def Comparable.<=>(fr2)
		return Fraccion.new(@n, @d) <=> Fraccion.new(fr2.n, fr2.d)
	end
end
