//BlackJack: tomar cartas de la baraja mezclada
//uso una variable "siguiente" que indica la posicion de la proxima carta y aumenta cada vez que tomo una
SubProceso CrearBaraja(baraja)
    Definir i Como Entero;
    Para i <- 1 Hasta 52 Hacer
        baraja[i] <- i - 1;
    FinPara
FinSubProceso

SubProceso MezclarBaraja(baraja)
    Definir i, j, aux Como Entero;
    Para i <- 52 Hasta 2 Con Paso -1 Hacer
        j <- Azar(i) + 1;
        aux <- baraja[i];
        baraja[i] <- baraja[j];
        baraja[j] <- aux;
    FinPara
FinSubProceso

Funcion nombre <- NombreCarta(carta)
    Definir nombre, nombreValor, nombrePalo Como Caracter;
    Definir valor, palo Como Entero;
    valor <- carta % 13 + 1;
    palo <- trunc(carta / 13);
    Segun valor Hacer
        1:
            nombreValor <- "As";
        11:
            nombreValor <- "J";
        12:
            nombreValor <- "Q";
        13:
            nombreValor <- "K";
        De Otro Modo:
            nombreValor <- ConvertirATexto(valor);
    FinSegun
    Segun palo Hacer
        0:
            nombrePalo <- "Corazones";
        1:
            nombrePalo <- "Diamantes";
        2:
            nombrePalo <- "Treboles";
        De Otro Modo:
            nombrePalo <- "Picas";
    FinSegun
    nombre <- Concatenar(Concatenar(nombreValor, " de "), nombrePalo);
FinFuncion

Funcion carta <- TomarCarta(baraja, siguiente Por Referencia)
    Definir carta Como Entero;
    carta <- baraja[siguiente];
    siguiente <- siguiente + 1;
FinFuncion

Algoritmo Ejercicio89_BlackJack_Tomar_Carta
    Definir baraja, siguiente, cantidad, i, carta Como Entero;
    Dimension baraja[52];
    CrearBaraja(baraja);
    MezclarBaraja(baraja);
    siguiente <- 1;
    Repetir
        Escribir "Cuantas cartas quiere tomar? (1 a 52): " Sin Saltar;
        Leer cantidad;
    Hasta Que cantidad >= 1 Y cantidad <= 52
    Para i <- 1 Hasta cantidad Hacer
        carta <- TomarCarta(baraja, siguiente);
        Escribir "Carta ", i, ": ", NombreCarta(carta);
    FinPara
    Escribir "Quedan ", 52 - siguiente + 1, " cartas en la baraja";
FinAlgoritmo
