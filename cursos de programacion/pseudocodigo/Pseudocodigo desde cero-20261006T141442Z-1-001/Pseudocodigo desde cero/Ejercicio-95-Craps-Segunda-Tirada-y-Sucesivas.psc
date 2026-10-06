//Craps: segunda tirada y sucesivas
//el jugador ya tiene un punto y sigue tirando hasta que saque su punto (gana) o un 7 (pierde)
Funcion total <- TirarDados
    Definir total, dado1, dado2 Como Entero;
    dado1 <- Azar(6) + 1;
    dado2 <- Azar(6) + 1;
    total <- dado1 + dado2;
    Escribir "Dados: ", dado1, " y ", dado2, " = ", total;
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

Algoritmo Ejercicio95_Craps_Segunda_Tirada_y_Sucesivas
    Definir punto Como Entero;
    Repetir
        Escribir "Ingrese su punto (4, 5, 6, 8, 9 o 10): " Sin Saltar;
        Leer punto;
    Hasta Que punto = 4 O punto = 5 O punto = 6 O punto = 8 O punto = 9 O punto = 10
    Si TiradasSiguientes(punto) Entonces
        Escribir "Sacaste tu punto, ganaste!";
    SiNo
        Escribir "Sacaste un 7, perdiste";
    FinSi
FinAlgoritmo
