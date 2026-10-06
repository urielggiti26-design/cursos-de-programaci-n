//BlackJack: turno del jugador
//se reparten 2 cartas y el jugador pide cartas mientras quiera y no pase de 21
//las figuras (J, Q, K) valen 10 y el As vale 11, pero si me paso de 21 el As pasa a valer 1
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

Algoritmo Ejercicio90_BlackJack_Turno_Jugador
    Definir baraja, siguiente, puntos Como Entero;
    Dimension baraja[52];
    CrearBaraja(baraja);
    MezclarBaraja(baraja);
    siguiente <- 1;
    puntos <- TurnoJugador(baraja, siguiente);
    Escribir "Terminaste tu turno con ", puntos, " puntos";
FinAlgoritmo
