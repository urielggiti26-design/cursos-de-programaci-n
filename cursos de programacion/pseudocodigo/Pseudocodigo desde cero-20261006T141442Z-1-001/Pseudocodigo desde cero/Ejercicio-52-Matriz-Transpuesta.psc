//calcular la transpuesta de una matriz
//la transpuesta cambia filas por columnas: t[j,i] = m[i,j]
Algoritmo Ejercicio52_Matriz_Transpuesta
    Definir filas, columnas, i, j Como Entero;
    Definir m, t Como Real;
    Escribir "Numero de filas: " Sin Saltar;
    Leer filas;
    Escribir "Numero de columnas: " Sin Saltar;
    Leer columnas;
    Dimension m[filas, columnas];
    Dimension t[columnas, filas];
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir "Elemento [", i, ",", j, "]: " Sin Saltar;
            Leer m[i, j];
            t[j, i] <- m[i, j];
        FinPara
    FinPara
    Escribir "Matriz original:";
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir m[i, j], "  " Sin Saltar;
        FinPara
        Escribir "";
    FinPara
    Escribir "Matriz transpuesta:";
    Para i <- 1 Hasta columnas Hacer
        Para j <- 1 Hasta filas Hacer
            Escribir t[i, j], "  " Sin Saltar;
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
