//pedir una cantidad de numeros y contar cuantos son pares, impares, positivos y negativos
//el cero cuenta como par pero no es ni positivo ni negativo
Algoritmo Ejercicio32_Pares_Impares_Positivos_Negativos
    Definir cantidad, i, numero, pares, impares, positivos, negativos Como Entero;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer cantidad;
    pares <- 0;
    impares <- 0;
    positivos <- 0;
    negativos <- 0;
    Para i <- 1 Hasta cantidad Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer numero;
        Si numero % 2 = 0 Entonces
            pares <- pares + 1;
        SiNo
            impares <- impares + 1;
        FinSi
        Si numero > 0 Entonces
            positivos <- positivos + 1;
        SiNo
            Si numero < 0 Entonces
                negativos <- negativos + 1;
            FinSi
        FinSi
    FinPara
    Escribir "Pares: ", pares;
    Escribir "Impares: ", impares;
    Escribir "Positivos: ", positivos;
    Escribir "Negativos: ", negativos;
FinAlgoritmo
