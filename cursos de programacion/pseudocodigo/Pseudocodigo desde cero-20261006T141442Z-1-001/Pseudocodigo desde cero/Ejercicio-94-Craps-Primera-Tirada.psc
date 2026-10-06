//Craps: primera tirada del jugador
//si saca 7 u 11 gana, si saca 2, 3 o 12 pierde
//con cualquier otro numero ese numero pasa a ser su "punto" y sigue jugando
Funcion total <- TirarDados
    Definir total, dado1, dado2 Como Entero;
    dado1 <- Azar(6) + 1;
    dado2 <- Azar(6) + 1;
    total <- dado1 + dado2;
    Escribir "Dados: ", dado1, " y ", dado2, " = ", total;
FinFuncion

//devuelve 1 si gana, 2 si pierde y 0 si sigue jugando (y guarda el punto)
Funcion resultado <- PrimeraTirada(punto Por Referencia)
    Definir resultado, total Como Entero;
    total <- TirarDados();
    Segun total Hacer
        7, 11:
            resultado <- 1;
        2, 3, 12:
            resultado <- 2;
        De Otro Modo:
            resultado <- 0;
            punto <- total;
    FinSegun
FinFuncion

Algoritmo Ejercicio94_Craps_Primera_Tirada
    Definir resultado, punto Como Entero;
    punto <- 0;
    resultado <- PrimeraTirada(punto);
    Segun resultado Hacer
        1:
            Escribir "Ganaste en la primera tirada!";
        2:
            Escribir "Perdiste en la primera tirada";
        De Otro Modo:
            Escribir "Tu punto es ", punto, ", sigues jugando";
    FinSegun
FinAlgoritmo
