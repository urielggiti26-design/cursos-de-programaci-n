//dibujar un rectangulo de asteriscos con las filas y columnas que diga el usuario
//un bucle para las filas y otro para las columnas, Sin Saltar para quedarme en la misma linea
Algoritmo Ejercicio43_Rectangulo_de_Asteriscos
    Definir filas, columnas, i, j Como Entero;
    Escribir "Ingrese el numero de filas: " Sin Saltar;
    Leer filas;
    Escribir "Ingrese el numero de columnas: " Sin Saltar;
    Leer columnas;
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Escribir "* " Sin Saltar;
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
