//llenar una matriz y mostrar el numero menor de cada columna
//recorro primero las columnas y dentro las filas
Algoritmo Ejercicio55_Menor_de_cada_Columna
    Definir filas, columnas, i, j Como Entero;
    Definir m, menor Como Real;
    Escribir "Numero de filas: " Sin Saltar;
    Leer filas;
    Escribir "Numero de columnas: " Sin Saltar;
    Leer columnas;
    Dimension m[filas, columnas];
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir "Elemento [", i, ",", j, "]: " Sin Saltar;
            Leer m[i, j];
        FinPara
    FinPara
    Para j <- 1 Hasta columnas Hacer
        menor <- m[1, j];
        Para i <- 1 Hasta filas Hacer
            Si m[i, j] < menor Entonces
                menor <- m[i, j];
            FinSi
        FinPara
        Escribir "El menor de la columna ", j, " es: ", menor;
    FinPara
FinAlgoritmo
