//sumar dos fracciones y dar el resultado simplificado
//a/b + c/d = (a*d + c*b) / (b*d) y luego divido arriba y abajo entre el MCD
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

SubProceso SumarFracciones(num1, den1, num2, den2, numRes Por Referencia, denRes Por Referencia)
    Definir divisor Como Entero;
    numRes <- num1 * den2 + num2 * den1;
    denRes <- den1 * den2;
    divisor <- MCD(numRes, denRes);
    Si divisor <> 0 Entonces
        numRes <- numRes / divisor;
        denRes <- denRes / divisor;
    FinSi
    Si denRes < 0 Entonces//dejo el signo arriba
        numRes <- -numRes;
        denRes <- -denRes;
    FinSi
FinSubProceso

Algoritmo Ejercicio70_Suma_de_Fracciones
    Definir num1, den1, num2, den2, numRes, denRes Como Entero;
    Escribir "Numerador de la primera fraccion: " Sin Saltar;
    Leer num1;
    Repetir
        Escribir "Denominador de la primera fraccion (distinto de 0): " Sin Saltar;
        Leer den1;
    Hasta Que den1 <> 0
    Escribir "Numerador de la segunda fraccion: " Sin Saltar;
    Leer num2;
    Repetir
        Escribir "Denominador de la segunda fraccion (distinto de 0): " Sin Saltar;
        Leer den2;
    Hasta Que den2 <> 0
    SumarFracciones(num1, den1, num2, den2, numRes, denRes);
    Escribir num1, "/", den1, " + ", num2, "/", den2, " = ", numRes, "/", denRes;
FinAlgoritmo
