//determinar si un numero dado es a la vez multiplo de 2 y 3 
//como idea buscar que los residuos de dividir entre 2 y 3 sean cero
// % da el residuo
Algoritmo Ejercicio16_Multiplo_2_y_3
    Definir numero Como Entero;
    Escribir "Ingrese un numero entero: " Sin Saltar;
    Leer numero;
	Si numero%2 = 0 & numero%3 = 0 Entonces
        Escribir "El numero es multiplo de 2 y de 3";
    SiNo
        Escribir "El numero no es multiplo de 2 y de 3 a la vez";
    FinSi
FinAlgoritmo

