//Piedra, papel o tijeras: comparar la eleccion del jugador con la del ordenador
//piedra gana a tijeras, tijeras gana a papel y papel gana a piedra
//la funcion devuelve 0 si es empate, 1 si gana el jugador y 2 si gana el ordenador
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

Algoritmo Ejercicio99_Piedra_Papel_Tijeras_Comparar
    Definir jugador, ordenador, resultado Como Entero;
    jugador <- TiradaJugador();
    ordenador <- TurnoOrdenador();
    Escribir "Tu eliges: ", NombreEleccion(jugador);
    Escribir "El ordenador elige: ", NombreEleccion(ordenador);
    resultado <- CompararElecciones(jugador, ordenador);
    Segun resultado Hacer
        0:
            Escribir "Empate";
        1:
            Escribir "Ganaste!";
        De Otro Modo:
            Escribir "Gana el ordenador";
    FinSegun
FinAlgoritmo
