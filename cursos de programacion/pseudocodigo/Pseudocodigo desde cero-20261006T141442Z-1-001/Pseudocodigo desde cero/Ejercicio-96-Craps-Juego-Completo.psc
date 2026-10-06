//Craps completo: primera tirada y, si hace falta, las tiradas siguientes hasta ganar o perder
//se puede jugar las veces que se quiera
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

Funcion gana <- TiradasSiguientes(punto)
    Definir gana, terminado Como Logico;
    Definir total Como Entero;
    gana <- Falso;
    terminado <- Falso;
    Repetir
        Escribir "Presione una tecla para tirar...";
        Esperar Tecla;
        total <- TirarDados();
        Si total = punto Entonces
            gana <- Verdadero;
            terminado <- Verdadero;
        SiNo
            Si total = 7 Entonces
                gana <- Falso;
                terminado <- Verdadero;
            FinSi
        FinSi
    Hasta Que terminado
FinFuncion

Algoritmo Ejercicio96_Craps_Juego_Completo
    Definir resultado, punto Como Entero;
    Definir respuesta Como Caracter;
    Repetir
        Borrar Pantalla;
        Escribir "=== CRAPS ===";
        Escribir "Presione una tecla para la primera tirada...";
        Esperar Tecla;
        punto <- 0;
        resultado <- PrimeraTirada(punto);
        Segun resultado Hacer
            1:
                Escribir "Ganaste en la primera tirada!";
            2:
                Escribir "Perdiste en la primera tirada";
            De Otro Modo:
                Escribir "Tu punto es ", punto;
                Si TiradasSiguientes(punto) Entonces
                    Escribir "Sacaste tu punto, ganaste!";
                SiNo
                    Escribir "Sacaste un 7, perdiste";
                FinSi
        FinSegun
        Escribir "Quiere jugar otra vez? (S/N): " Sin Saltar;
        Leer respuesta;
    Hasta Que Mayusculas(respuesta) <> "S"
    Escribir "Gracias por jugar";
FinAlgoritmo
