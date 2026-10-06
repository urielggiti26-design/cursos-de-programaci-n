//BlackJack: crear una baraja de 52 cartas y mezclarla
//cada carta es un numero del 0 al 51: valor = carta % 13 + 1 y palo = trunc(carta / 13)
//para mezclar recorro la baraja de atras hacia adelante y cambio cada carta con otra al azar
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

Algoritmo Ejercicio88_BlackJack_Crear_y_Mezclar_Baraja
    Definir baraja, i Como Entero;
    Dimension baraja[52];
    CrearBaraja(baraja);
    MezclarBaraja(baraja);
    Escribir "Baraja mezclada:";
    Para i <- 1 Hasta 52 Hacer
        Escribir i, ". ", NombreCarta(baraja[i]);
    FinPara
FinAlgoritmo
