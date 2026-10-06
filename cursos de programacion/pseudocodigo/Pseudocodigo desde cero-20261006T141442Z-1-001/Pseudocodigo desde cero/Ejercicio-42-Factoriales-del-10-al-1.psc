//mostrar el factorial de los numeros del 10 al 1
//para cada numero calculo su factorial con otro bucle
Algoritmo Ejercicio42_Factoriales_del_10_al_1
    Definir i, j, factorial Como Entero;
    Para i <- 10 Hasta 1 Con Paso -1 Hacer
        factorial <- 1;
        Para j <- 1 Hasta i Hacer
            factorial <- factorial * j;
        FinPara
        Escribir "El factorial de ", i, " es: ", factorial;
    FinPara
FinAlgoritmo
