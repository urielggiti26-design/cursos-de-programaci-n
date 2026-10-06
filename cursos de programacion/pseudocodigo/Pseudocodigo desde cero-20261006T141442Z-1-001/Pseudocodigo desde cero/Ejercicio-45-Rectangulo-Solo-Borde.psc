//dibujar solo el borde de un rectangulo de asteriscos
//se pone asterisco si estoy en la primera o ultima fila, o en la primera o ultima columna
Algoritmo Ejercicio45_Rectangulo_Solo_Borde
    Definir filas, columnas, i, j Como Entero;
    Escribir "Ingrese el numero de filas: " Sin Saltar;
    Leer filas;
    Escribir "Ingrese el numero de columnas: " Sin Saltar;
    Leer columnas;
    Para i <- 1 Hasta filas Hacer
        Para j <- 1 Hasta columnas Hacer
            Si i = 1 O i = filas O j = 1 O j = columnas Entonces
                Escribir "* " Sin Saltar;
            SiNo
                Escribir "  " Sin Saltar;
            FinSi
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
