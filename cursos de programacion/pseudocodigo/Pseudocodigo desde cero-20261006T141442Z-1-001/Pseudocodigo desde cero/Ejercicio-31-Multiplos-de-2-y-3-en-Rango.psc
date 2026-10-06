//contar cuantos numeros son multiplos de 2 y de 3 a la vez dentro de un rango dado
//si un numero es multiplo de 2 y de 3 a la vez su resto al dividir entre 2 y entre 3 es 0
Algoritmo Ejercicio31_Multiplos_de_2_y_3_en_Rango
    Definir numInicio, numFinal, aux, i, contador Como Entero;
    Escribir "Ingrese el numero inicial: " Sin Saltar;
    Leer numInicio;
    Escribir "Ingrese el numero final: " Sin Saltar;
    Leer numFinal;
    Si numInicio > numFinal Entonces//si los dan al reves los intercambio
        aux <- numInicio;
        numInicio <- numFinal;
        numFinal <- aux;
    FinSi
    contador <- 0;
    Para i <- numInicio Hasta numFinal Hacer
        Si i % 2 = 0 Y i % 3 = 0 Entonces
            Escribir i;
            contador <- contador + 1;
        FinSi
    FinPara
    Escribir "Hay ", contador, " numeros multiplos de 2 y de 3 a la vez";
FinAlgoritmo
