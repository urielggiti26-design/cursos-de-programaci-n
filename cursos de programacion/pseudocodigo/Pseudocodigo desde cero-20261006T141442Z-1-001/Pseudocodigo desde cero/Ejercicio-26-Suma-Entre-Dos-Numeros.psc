//primero definire dos numeros como enteros y usare las variables menor mayor y actual
//mayor y menor sera para acomodar los numeros en caso de que se ingresen en desorden 
//y actual sera para hacer la suma en cadena 
Algoritmo Ejercicio26_Suma_Entre_Dos_Numeros
	Definir num1, num2, mayor, menor ,actual Como Entero;
	Escribir "Ingrese el primer numero: " Sin Saltar;
    Leer num1;
    Escribir "Ingrese el segundo numero: " Sin Saltar;
    Leer num2;
	
    Si num1 < num2 Entonces
        menor <- num1;
        mayor <- num2;
    SiNo
        menor <- num2;
        mayor <- num1;
    FinSi
	
    suma <- 0;
    actual <- menor + 1;
    Mientras actual < mayor Hacer
        suma <- suma + actual;
        actual <- actual + 1;
    FinMientras
	
    Escribir "La suma de los numeros entre ", menor, " y ", mayor, " es: ", suma;
	
FinAlgoritmo
