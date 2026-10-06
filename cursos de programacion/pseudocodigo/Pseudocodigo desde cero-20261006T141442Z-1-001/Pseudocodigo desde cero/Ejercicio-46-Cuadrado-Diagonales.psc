//dibujar un cuadrado de asteriscos donde solo se vean las diagonales (una X)
//diagonal principal: fila = columna, diagonal secundaria: fila + columna = lado + 1
Algoritmo Ejercicio46_Cuadrado_Diagonales
    Definir lado, i, j Como Entero;
    Escribir "Ingrese el lado del cuadrado: " Sin Saltar;
    Leer lado;
    Para i <- 1 Hasta lado Hacer
        Para j <- 1 Hasta lado Hacer
            Si i = j O i + j = lado + 1 Entonces
                Escribir "* " Sin Saltar;
            SiNo
                Escribir "  " Sin Saltar;
            FinSi
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
