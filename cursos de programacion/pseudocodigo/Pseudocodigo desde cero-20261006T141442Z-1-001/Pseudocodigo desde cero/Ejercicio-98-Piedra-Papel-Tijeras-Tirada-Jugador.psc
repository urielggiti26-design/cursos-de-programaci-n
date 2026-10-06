//Piedra, papel o tijeras: tirada del jugador
//muestro un menu y repito hasta que el jugador elija una opcion valida (1, 2 o 3)
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

Algoritmo Ejercicio98_Piedra_Papel_Tijeras_Tirada_Jugador
    Definir eleccion Como Entero;
    eleccion <- TiradaJugador();
    Escribir "Elegiste: ", NombreEleccion(eleccion);
FinAlgoritmo
