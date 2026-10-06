//Craps: funcion que tira dos dados y devuelve la suma
//Azar(6) da un numero del 0 al 5, por eso le sumo 1
Funcion total <- TirarDados
    Definir total, dado1, dado2 Como Entero;
    dado1 <- Azar(6) + 1;
    dado2 <- Azar(6) + 1;
    total <- dado1 + dado2;
    Escribir "Dados: ", dado1, " y ", dado2, " = ", total;
FinFuncion

Algoritmo Ejercicio93_Craps_Tirada_Dos_Dados
    Definir resultado Como Entero;
    resultado <- TirarDados();
    Escribir "La suma de la tirada es: ", resultado;
FinAlgoritmo
