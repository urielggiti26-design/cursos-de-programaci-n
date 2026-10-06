//reducir (simplificar) una fraccion dividiendo numerador y denominador entre su MCD
//por ejemplo 12/18 -> MCD = 6 -> 2/3
Funcion resultado <- MCD(a, b)
    Definir resultado, resto Como Entero;
    a <- abs(a);
    b <- abs(b);
    Mientras b <> 0 Hacer
        resto <- a % b;
        a <- b;
        b <- resto;
    FinMientras
    resultado <- a;
FinFuncion

SubProceso Reducir(numerador Por Referencia, denominador Por Referencia)
    Definir divisor Como Entero;
    divisor <- MCD(numerador, denominador);
    numerador <- numerador / divisor;
    denominador <- denominador / divisor;
    Si denominador < 0 Entonces
        numerador <- -numerador;
        denominador <- -denominador;
    FinSi
FinSubProceso

Algoritmo Ejercicio71_Reducir_Fraccion
    Definir numerador, denominador Como Entero;
    Escribir "Ingrese el numerador: " Sin Saltar;
    Leer numerador;
    Repetir
        Escribir "Ingrese el denominador (distinto de 0): " Sin Saltar;
        Leer denominador;
    Hasta Que denominador <> 0
    Escribir "La fraccion ", numerador, "/", denominador Sin Saltar;
    Reducir(numerador, denominador);
    Escribir " reducida es ", numerador, "/", denominador;
FinAlgoritmo
