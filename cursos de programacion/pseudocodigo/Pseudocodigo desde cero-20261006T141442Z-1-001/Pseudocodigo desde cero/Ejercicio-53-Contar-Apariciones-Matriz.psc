//llenar una matriz y contar cuantas veces aparece un numero que diga el usuario
Algoritmo Ejercicio53_Contar_Apariciones_Matriz
    Definir filas, columnas, i, j, contador Como Entero;
    Definir m, buscado Como Real;
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
    Escribir "Que numero quiere buscar? " Sin Saltar;
    Leer buscado;
    contador <- 0;
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Si m[i, j] = buscado Entonces
                contador <- contador + 1;
            FinSi
        FinPara
    FinPara
    Escribir "El numero ", buscado, " aparece ", contador, " veces en la matriz";
FinAlgoritmo
