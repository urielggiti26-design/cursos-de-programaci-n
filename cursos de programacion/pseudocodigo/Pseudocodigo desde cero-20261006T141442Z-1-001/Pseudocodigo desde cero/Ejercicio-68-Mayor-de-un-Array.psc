//funcion que recibe un arreglo y devuelve el numero mayor
Funcion mayor <- MayorArray(v, n)
    Definir mayor Como Real;
    Definir i Como Entero;
    mayor <- v[1];
    Para i <- 1 Hasta n Hacer
        Si v[i] > mayor Entonces
            mayor <- v[i];
        FinSi
    FinPara
FinFuncion

Algoritmo Ejercicio68_Mayor_de_un_Array
    Definir n, i Como Entero;
    Definir v Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Escribir "El numero mayor es: ", MayorArray(v, n);
FinAlgoritmo
