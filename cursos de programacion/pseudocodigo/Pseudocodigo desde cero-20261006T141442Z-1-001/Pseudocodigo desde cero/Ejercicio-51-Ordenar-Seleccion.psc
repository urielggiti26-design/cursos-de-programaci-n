//ordenar un arreglo de menor a mayor con el metodo de seleccion
//en cada vuelta busco el menor de lo que queda y lo pongo en su posicion
Algoritmo Ejercicio51_Ordenar_Seleccion
    Definir n, i, j, posMenor Como Entero;
    Definir v, aux Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Para i <- 1 Hasta n - 1 Hacer
        posMenor <- i;
        Para j <- i + 1 Hasta n Hacer
            Si v[j] < v[posMenor] Entonces
                posMenor <- j;
            FinSi
        FinPara
        aux <- v[i];
        v[i] <- v[posMenor];
        v[posMenor] <- aux;
    FinPara
    Escribir "Arreglo ordenado:";
    Para i <- 1 Hasta n Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
FinAlgoritmo
