#Realizado por Daura y Miguel Aurelio García González

require "rspec"
require "./fraccion.rb"

describe Fraccion do

	before :each do
		@fr = Fraccion.new(8, 16)
	end

	it "Debe existir un numerador" do
		@fr.num.is_a?(Numeric).should == true
	end

	it "Debe existir un denominador" do
		@fr.denom.is_a?(Numeric).should == true
	end

	it "Debe de estar en su forma reducida" do
    		@fr.should == Fraccion.new(1, 2)
  	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@fr.num.should == 8
	end

	it "Se debe invocar al metodo denom() para obtener el denominador" do
		@fr.denom.should == 16
	end

	it "Se debe mostrar por la consola la fraccion de la forma: a/b, donde a es el numerador y b el denominador" do
		@fr.to_s.should == "8/16"
	end
	
	it "Se debe mostrar por la consola la fraccion en formato flotante" do
		@fr.to_f.should == 0.5
	end

	it "Se debe comparar si dos fracciones son iguales con ==" do
		@fr.should == Fraccion.new(8, 16)
	end
	
	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		Fraccion.new(-8, 16).abs == @fr
	end

	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do
		@fr.reciprocal.should == Fraccion.new(16, 8)
	end

	it "Se debe calcular el opuesto de una fraccion con -" do
		(-@fr).should == Fraccion.new(-8, 16)
	end

	it "Se debe sumar dos fracciones con + y dar el resultado en forma reducida" do
		(@fr + Fraccion.new(12, 4)).to_s.should == "7/2"
	end

	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
		(@fr - Fraccion.new(7, 16)).to_s.should == "1/16"
	end

	it "Se debe multiplicar dos fracciones y se debe dar el resultado de forma reducida" do
		(@fr * Fraccion.new(2, 4)).to_s.should == "1/4"
	end
	
	it " Se deben dividir dos fracciones y dar el resultado en forma reducida" do
		(@fr / Fraccion.new(3,4)).to_s.should == "2/3"
	end
	
	it "Se debe calcular el resto entre dos fracciones y dar el resultado en forma reducida" do
		(@fr % Fraccion.new(8,16)).should == "1/1"
	end
		
	it "Comprobar si una fraccion es menor que otra" do
	      (@fr < Fraccion.new(3,4)).should == false
	end
	
	it "Comprobar si una fraccion es mayor que otra" do
	      (Fraccion.new(1,4) > @fr).should == false
	end
	
	it "Comprobar si una fraccion es menor igual que otra" do 
	      (@fr <= Fraccion.new(3,4)).should == true
	end

	it " Comprobar si una fraccion es mayor o igual que otra " do
	      (@fr >= Fraccion.new(1,2)).should == true
	end








end
