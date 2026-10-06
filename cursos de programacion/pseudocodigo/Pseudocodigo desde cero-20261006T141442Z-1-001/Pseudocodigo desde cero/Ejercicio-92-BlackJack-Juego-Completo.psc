//BlackJack completo: juega el jugador, luego el crupier, y se decide quien gana
//si el jugador se pasa de 21 pierde, si el crupier se pasa gana el jugador
//si nadie se pasa gana el que tenga mas puntos y si tienen los mismos es empate
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

Funcion puntos <- TurnoJugador(baraja, siguiente Por Referencia)
    Definir mano, n, i, puntos Como Entero;
    Definir respuesta Como Caracter;
    Dimension mano[12];
    n <- 0;
    Para i <- 1 Hasta 2 Hacer
        n <- n + 1;
        mano[n] <- TomarCarta(baraja, siguiente);
        Escribir "Te sale: ", NombreCarta(mano[n]);
    FinPara
    puntos <- PuntosMano(mano, n);
    Escribir "Tus puntos: ", puntos;
    respuesta <- "S";
    Mientras puntos < 21 Y respuesta = "S" Hacer
        Escribir "Quieres otra carta? (S/N): " Sin Saltar;
        Leer respuesta;
        respuesta <- Mayusculas(respuesta);
        Si respuesta = "S" Entonces
            n <- n + 1;
            mano[n] <- TomarCarta(baraja, siguiente);
            Escribir "Te sale: ", NombreCarta(mano[n]);
            puntos <- PuntosMano(mano, n);
            Escribir "Tus puntos: ", puntos;
        FinSi
    FinMientras
    Si puntos > 21 Entonces
        Escribir "Te pasaste de 21";
    FinSi
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
FinFuncion

Algoritmo Ejercicio92_BlackJack_Juego_Completo
    Definir baraja, siguiente, puntosJugador, puntosCrupier Como Entero;
    Definir respuesta Como Caracter;
    Dimension baraja[52];
    Repetir
        Borrar Pantalla;
        Escribir "=== BLACKJACK ===";
        CrearBaraja(baraja);
        MezclarBaraja(baraja);
        siguiente <- 1;
        Escribir "--- Turno del jugador ---";
        puntosJugador <- TurnoJugador(baraja, siguiente);
        Si puntosJugador > 21 Entonces
            Escribir "Perdiste!";
        SiNo
            Escribir "--- Turno del crupier ---";
            puntosCrupier <- TurnoCrupier(baraja, siguiente);
            Si puntosCrupier > 21 O puntosJugador > puntosCrupier Entonces
                Escribir "Ganaste!";
            SiNo
                Si puntosJugador = puntosCrupier Entonces
                    Escribir "Empate";
                SiNo
                    Escribir "Perdiste!";
                FinSi
            FinSi
        FinSi
        Escribir "Quiere jugar otra vez? (S/N): " Sin Saltar;
        Leer respuesta;
    Hasta Que Mayusculas(respuesta) <> "S"
    Escribir "Gracias por jugar";
FinAlgoritmo
