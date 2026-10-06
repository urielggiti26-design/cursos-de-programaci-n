//ordenar un arreglo de menor a mayor con el metodo de la burbuja
//se comparan los elementos de dos en dos y si estan desordenados se intercambian
//en cada vuelta el mayor "sube" al final como una burbuja
Algoritmo Ejercicio50_Ordenar_Burbuja
    Definir n, i, j Como Entero;
    Definir v, aux Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Para i <- 1 Hasta n - 1 Hacer
        Para j <- 1 Hasta n - i Hacer
            Si v[j] > v[j + 1] Entonces
                aux <- v[j];
                v[j] <- v[j + 1];
                v[j + 1] <- aux;
            FinSi
        FinPara
    FinPara
    Escribir "Arreglo ordenado:";
    Para i <- 1 Hasta n Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
FinAlgoritmo
