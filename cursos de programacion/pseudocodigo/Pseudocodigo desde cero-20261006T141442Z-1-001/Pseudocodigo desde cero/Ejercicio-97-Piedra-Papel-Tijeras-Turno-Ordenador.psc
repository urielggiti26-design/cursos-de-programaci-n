//Piedra, papel o tijeras: turno del ordenador
//el ordenador elige al azar: 1 = Piedra, 2 = Papel, 3 = Tijeras
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

Algoritmo Ejercicio97_Piedra_Papel_Tijeras_Turno_Ordenador
    Definir eleccion Como Entero;
    eleccion <- TurnoOrdenador();
    Escribir "El ordenador elige: ", NombreEleccion(eleccion);
FinAlgoritmo
