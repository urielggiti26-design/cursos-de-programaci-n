//BlackJack: turno del crupier
//el crupier esta obligado a pedir carta mientras tenga menos de 17 puntos
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

Funcion puntos <- ValorCarta(carta)
    Definir puntos, valor Como Entero;
    valor <- carta % 13 + 1;
    Si valor = 1 Entonces
        puntos <- 11;
    SiNo
        Si valor > 10 Entonces
            puntos <- 10;
        SiNo
            puntos <- valor;
        FinSi
    FinSi
FinFuncion

Funcion total <- PuntosMano(mano, n)
    Definir total, ases, i Como Entero;
    total <- 0;
    ases <- 0;
    Para i <- 1 Hasta n Hacer
        total <- total + ValorCarta(mano[i]);
        Si mano[i] % 13 = 0 Entonces
            ases <- ases + 1;
        FinSi
    FinPara
    Mientras total > 21 Y ases > 0 Hacer
        total <- total - 10;
        ases <- ases - 1;
    FinMientras
FinFuncion

Funcion puntos <- TurnoCrupier(baraja, siguiente Por Referencia)
    Definir mano, n, puntos Como Entero;
    Dimension mano[12];
    n <- 0;
    puntos <- 0;
    Mientras puntos < 17 Hacer
        n <- n + 1;
        mano[n] <- TomarCarta(baraja, siguiente);
        Escribir "El crupier saca: ", NombreCarta(mano[n]);
        puntos <- PuntosMano(mano, n);
    FinMientras
    Escribir "Puntos del crupier: ", puntos;
    Si puntos > 21 Entonces
        Escribir "El crupier se paso de 21";
    FinSi
FinFuncion

Algoritmo Ejercicio91_BlackJack_Turno_Crupier
    Definir baraja, siguiente, puntos Como Entero;
    Dimension baraja[52];
    CrearBaraja(baraja);
    MezclarBaraja(baraja);
    siguiente <- 1;
    puntos <- TurnoCrupier(baraja, siguiente);
FinAlgoritmo
