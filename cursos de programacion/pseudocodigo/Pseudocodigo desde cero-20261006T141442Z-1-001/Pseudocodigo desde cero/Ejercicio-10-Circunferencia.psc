//calcula la longitud de la circunferencia y el area dado el radio 
//longitud es igual a dos veces pi x radio
//area es igual a pi x radio al cuadrado 
//pi es igual a 3.1416
Algoritmo Circunferencia
	Definir radio, perimetro, area Como Real;
	Escribir "Ingrese el radio " Sin Saltar;
	Leer radio;
	perimetro = 2*(radio*3.1416);
	area = radio^2*3.1416;
	Escribir "Perimetro es igual a ", perimetro;
	Escribir "Area es igual a ", area;
	
FinAlgoritmo
