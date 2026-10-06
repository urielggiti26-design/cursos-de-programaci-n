//Loteria Primitiva: hacer el sorteo
//salen 6 numeros distintos del 1 al 49, un complementario (distinto a los 6) y un reintegro del 0 al 9
Funcion esta <- Contiene(v, n, valor)
    Definir esta Como Logico;
    Definir i Como Entero;
    esta <- Falso;
    i <- 1;
    Mientras i <= n Y NO esta Hacer
        Si v[i] = valor Entonces
            esta <- Verdadero;
        FinSi
        i <- i + 1;
    FinMientras
FinFuncion

SubProceso GenerarCombinacion(v)
    Definir i, numero Como Entero;
    Para i <- 1 Hasta 6 Hacer
        Repetir
            numero <- Azar(49) + 1;
        Hasta Que NO Contiene(v, i - 1, numero)
        v[i] <- numero;
    FinPara
FinSubProceso

SubProceso OrdenarCombinacion(v)
    Definir i, j, aux Como Entero;
    Para i <- 1 Hasta 5 Hacer
        Para j <- 1 Hasta 6 - i Hacer
            Si v[j] > v[j + 1] Entonces
                aux <- v[j];
                v[j] <- v[j + 1];
                v[j + 1] <- aux;
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso MostrarCombinacion(v)
    Definir i Como Entero;
    Para i <- 1 Hasta 6 Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
FinSubProceso

SubProceso Sortear(sorteo, complementario Por Referencia, reintegro Por Referencia)
    GenerarCombinacion(sorteo);
    OrdenarCombinacion(sorteo);
    Repetir
        complementario <- Azar(49) + 1;
    Hasta Que NO Contiene(sorteo, 6, complementario)
    reintegro <- Azar(10);
FinSubProceso

Algoritmo Ejercicio85_Loteria_Sorteo
    Definir sorteo, complementario, reintegro Como Entero;
    Dimension sorteo[6];
    Sortear(sorteo, complementario, reintegro);
    Escribir "Combinacion ganadora: " Sin Saltar;
    MostrarCombinacion(sorteo);
    Escribir "Complementario: ", complementario;
    Escribir "Reintegro: ", reintegro;
FinAlgoritmo
