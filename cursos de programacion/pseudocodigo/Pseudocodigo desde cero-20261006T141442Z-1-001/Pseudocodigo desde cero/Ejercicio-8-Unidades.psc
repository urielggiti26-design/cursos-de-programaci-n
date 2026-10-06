//diseñar un progrma que calcule las unidades de un numero entero dado.
//por ejemplo de 234 las unidades son 4.
//para este dividire entre 10 y el residuo son las unidades.
Algoritmo Ejercicio8_unidades
    Definir numero, unidades Como Entero;
    Escribir "Ingrese un numero entero: " Sin Saltar;
    Leer numero;
    unidades <- numero % 10;
    Escribir "La cifra de las unidades es: ", unidades;
	
FinAlgoritmo
