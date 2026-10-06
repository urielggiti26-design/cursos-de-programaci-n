//calcular el minimo comun multiplo (mcm) de todos los numeros de un arreglo
//mcm(a, b) = a * b / MCD(a, b) y el mcm de varios se calcula de dos en dos
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

Funcion resultado <- MCM(a, b)
    Definir resultado Como Entero;
    resultado <- abs(a) / MCD(a, b) * abs(b);
FinFuncion

Funcion resultado <- MCMArray(v, n)
    Definir resultado, i Como Entero;
    resultado <- abs(v[1]);
    Para i <- 1 Hasta n Hacer
        resultado <- MCM(resultado, v[i]);
    FinPara
FinFuncion

Algoritmo Ejercicio69_MCM_de_un_Array
    Definir n, i, v Como Entero;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Repetir
            Escribir "Ingrese el numero ", i, " (distinto de 0): " Sin Saltar;
            Leer v[i];
        Hasta Que v[i] <> 0
    FinPara
    Escribir "El mcm de los numeros es: ", MCMArray(v, n);
FinAlgoritmo
