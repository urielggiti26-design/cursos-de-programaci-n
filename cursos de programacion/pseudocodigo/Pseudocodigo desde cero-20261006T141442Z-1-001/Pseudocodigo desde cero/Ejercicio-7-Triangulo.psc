//calcular el area de un triangulo rectangulo.
//tambien calcular el perimetro dados los dos catetos.
//area = cateto1*cateto2/2
//perimetro = cateto1 + cateto 2 + hipotenusa 
// hipotenusa = raiz cuadrada (cateto1^2 + cateto2^2)
Algoritmo triangulo
	Definir cateto1, cateto2, hipotenusa, perimetro, area Como Real;
	Escribir "Ingrese el primer cateto" Sin Saltar;
	Leer cateto1;
	Escribir "Ingrese el segundo cateto" Sin Saltar;
	Leer cateto2;
	hipotenusa = raiz(cateto1^2+cateto2^2);
	perimetro = cateto1+cateto2+hipotenusa;
	area = (cateto1*cateto2)/2;
	Escribir "El perimetro es ", perimetro;
	Escribir "El area es ", area;
FinAlgoritmo
