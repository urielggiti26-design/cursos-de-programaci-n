//un edificio tiene plantas y en cada planta varias puertas (departamentos)
//se guarda en una matriz cuantos vecinos viven en cada departamento
//hay que decir que planta tiene mas vecinos sumando cada fila
Algoritmo Ejercicio54_Planta_con_mas_Vecinos
    Definir plantas, puertas, i, j, suma, maximo, plantaMax Como Entero;
    Definir vecinos Como Entero;
    Escribir "Cuantas plantas tiene el edificio? " Sin Saltar;
    Leer plantas;
    Escribir "Cuantas puertas hay en cada planta? " Sin Saltar;
    Leer puertas;
    Dimension vecinos[plantas, puertas];
    Para i <- 1 Hasta plantas Hacer
        Para j <- 1 Hasta puertas Hacer
            Escribir "Vecinos en la planta ", i, " puerta ", j, ": " Sin Saltar;
            Leer vecinos[i, j];
        FinPara
    FinPara
    maximo <- -1;
    plantaMax <- 0;
    Para i <- 1 Hasta plantas Hacer
        suma <- 0;
        Para j <- 1 Hasta puertas Hacer
            suma <- suma + vecinos[i, j];
        FinPara
        Escribir "La planta ", i, " tiene ", suma, " vecinos";
        Si suma > maximo Entonces
            maximo <- suma;
            plantaMax <- i;
        FinSi
    FinPara
    Escribir "La planta con mas vecinos es la ", plantaMax, " con ", maximo, " vecinos";
FinAlgoritmo
