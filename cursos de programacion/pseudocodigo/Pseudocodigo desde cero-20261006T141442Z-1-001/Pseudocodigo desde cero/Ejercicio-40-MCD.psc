//calcular el maximo comun divisor (MCD) de dos numeros con el algoritmo de Euclides
//se divide el mayor entre el menor y se repite con el resto hasta que el resto sea 0
Algoritmo Ejercicio40_MCD
    Definir a, b, resto, num1, num2 Como Entero;
    Escribir "Ingrese el primer numero: " Sin Saltar;
    Leer num1;
    Escribir "Ingrese el segundo numero: " Sin Saltar;
    Leer num2;
    a <- abs(num1);
    b <- abs(num2);
    Mientras b <> 0 Hacer
        resto <- a % b;
        a <- b;
        b <- resto;
    FinMientras
    Escribir "El MCD de ", num1, " y ", num2, " es: ", a;
FinAlgoritmo
