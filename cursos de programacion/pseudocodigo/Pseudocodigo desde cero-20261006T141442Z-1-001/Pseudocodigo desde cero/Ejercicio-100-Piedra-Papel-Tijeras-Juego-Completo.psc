//Piedra, papel o tijeras completo: se juegan rondas hasta que alguien llegue a 3 victorias
//se lleva un marcador del jugador y del ordenador
Funcion nombre <- NombreEleccion(eleccion)
    Definir nombre Como Caracter;
    Segun eleccion Hacer
        1:
            nombre <- "Piedra";
        2:
            nombre <- "Papel";
        De Otro Modo:
            nombre <- "Tijeras";
    FinSegun
FinFuncion

Funcion eleccion <- TurnoOrdenador
    Definir eleccion Como Entero;
    eleccion <- Azar(3) + 1;
FinFuncion

Funcion eleccion <- TiradaJugador
    Definir eleccion Como Entero;
    Repetir
        Escribir "1. Piedra";
        Escribir "2. Papel";
        Escribir "3. Tijeras";
        Escribir "Elige una opcion: " Sin Saltar;
        Leer eleccion;
        Si eleccion < 1 O eleccion > 3 Entonces
            Escribir "Opcion no valida";
        FinSi
    Hasta Que eleccion >= 1 Y eleccion <= 3
FinFuncion

Funcion resultado <- CompararElecciones(jugador, ordenador)
    Definir resultado Como Entero;
    Si jugador = ordenador Entonces
        resultado <- 0;
    SiNo
        Si (jugador = 1 Y ordenador = 3) O (jugador = 2 Y ordenador = 1) O (jugador = 3 Y ordenador = 2) Entonces
            resultado <- 1;
        SiNo
            resultado <- 2;
        FinSi
    FinSi
FinFuncion

Algoritmo Ejercicio100_Piedra_Papel_Tijeras_Juego_Completo
    Definir jugador, ordenador, resultado, victoriasJugador, victoriasOrdenador, ronda Como Entero;
    victoriasJugador <- 0;
    victoriasOrdenador <- 0;
    ronda <- 1;
    Escribir "=== PIEDRA, PAPEL O TIJERAS ===";
    Escribir "Gana el primero que llegue a 3 victorias";
    Mientras victoriasJugador < 3 Y victoriasOrdenador < 3 Hacer
        Escribir "";
        Escribir "--- Ronda ", ronda, " ---";
        jugador <- TiradaJugador();
        ordenador <- TurnoOrdenador();
        Escribir "Tu eliges: ", NombreEleccion(jugador);
        Escribir "El ordenador elige: ", NombreEleccion(ordenador);
        resultado <- CompararElecciones(jugador, ordenador);
        Segun resultado Hacer
            0:
                Escribir "Empate";
            1:
                Escribir "Ganas la ronda";
                victoriasJugador <- victoriasJugador + 1;
            De Otro Modo:
                Escribir "El ordenador gana la ronda";
                victoriasOrdenador <- victoriasOrdenador + 1;
        FinSegun
        Escribir "Marcador: Tu ", victoriasJugador, " - ", victoriasOrdenador, " Ordenador";
        ronda <- ronda + 1;
    FinMientras
    Si victoriasJugador = 3 Entonces
        Escribir "Ganaste la partida!";
    SiNo
        Escribir "El ordenador gana la partida";
    FinSi
FinAlgoritmo
