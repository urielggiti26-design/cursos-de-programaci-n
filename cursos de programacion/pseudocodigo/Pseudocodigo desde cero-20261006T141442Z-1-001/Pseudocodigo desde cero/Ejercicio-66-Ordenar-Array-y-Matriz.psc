//subproceso que ordena un arreglo con el metodo de la burbuja
//primero lo pruebo con un arreglo y despues lo uso para ordenar cada fila de una matriz
//como no puedo pasar una fila sola, la copio a un arreglo, la ordeno y la devuelvo a la matriz
SubProceso Ordenar(v, n)
    Definir i, j Como Entero;
    Definir aux Como Real;
    Para i <- 1 Hasta n - 1 Hacer
        Para j <- 1 Hasta n - i Hacer
            Si v[j] > v[j + 1] Entonces
                aux <- v[j];
                v[j] <- v[j + 1];
                v[j + 1] <- aux;
            FinSi
        FinPara
    FinPara
FinSubProceso

Algoritmo Ejercicio66_Ordenar_Array_y_Matriz
    Definir n, filas, columnas, i, j Como Entero;
    Definir v, m, fila Como Real;
    Escribir "Prueba con un arreglo";
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Ordenar(v, n);
    Escribir "Arreglo ordenado:";
    Para i <- 1 Hasta n Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
    Escribir "";
    Escribir "Prueba con una matriz (se ordena cada fila)";
    Escribir "Numero de filas: " Sin Saltar;
    Leer filas;
    Escribir "Numero de columnas: " Sin Saltar;
    Leer columnas;
    Dimension m[filas, columnas];
    Dimension fila[columnas];
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir "Elemento [", i, ",", j, "]: " Sin Saltar;
            Leer m[i, j];
        FinPara
    FinPara
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            fila[j] <- m[i, j];
        FinPara
        Ordenar(fila, columnas);
        Para j <- 1 Hasta columnas Hacer
            m[i, j] <- fila[j];
        FinPara
    FinPara
    Escribir "Matriz con cada fila ordenada:";
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir m[i, j], "  " Sin Saltar;
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
