//Mis variables son el precio y el descuentoq ue sera del 15%
//tambien el total es una variable
Algoritmo Calcular_el_precio_final
	Definir precio, porcentaje, descuento, total Como Real;
	porcentaje=15;
	Escribir "Ingrese el precio del articulo";
	leer precio;
	descuento=precio*porcentaje/100;
	total=precio-descuento;
	Escribir "Con ", porcentaje, "% de descuento, el total es ", total, " pesos";
	
FinAlgoritmo
