Algoritmo Ejercicio27_Suma_Hasta_Cero
    Definir numero, suma Como Entero;
    suma <- 0;
	
    Repetir
        Escribir "Ingrese un numero (0 para terminar): " Sin Saltar;
        Leer numero;
        suma <- suma + numero;
    Mientras Que numero <> 0;
	
    Escribir "La suma total es: ", suma;
FinAlgoritmo