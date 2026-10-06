//funcion que recibe un arreglo y devuelve la posicion donde esta el numero mayor
//los arreglos siempre se pasan por referencia
Funcion posicion <- PosicionMayor(v, n)
    Definir posicion, i Como Entero;
    posicion <- 1;
    Para i <- 1 Hasta n Hacer
        Si v[i] > v[posicion] Entonces
            posicion <- i;
        FinSi
    FinPara
FinFuncion

Algoritmo Ejercicio65_Posicion_del_Mayor
    Definir n, i, pos Como Entero;
    Definir v Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    pos <- PosicionMayor(v, n);
    Escribir "El mayor es ", v[pos], " y esta en la posicion ", pos;
FinAlgoritmo
