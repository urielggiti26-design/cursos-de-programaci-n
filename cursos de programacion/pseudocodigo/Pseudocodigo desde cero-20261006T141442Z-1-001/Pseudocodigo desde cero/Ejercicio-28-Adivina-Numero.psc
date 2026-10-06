//azar elige un numero dentro del valor que le de en este caso sera 10
//cado inteto suma 1 
Algoritmo Ejercicio28_Adivina_Numero
    Definir numeroSecreto, intento, intentos Como Entero;
	
    numeroSecreto <- azar(10);
    intentos <- 0;
	
    Repetir
        Escribir "Adivina el numero (0-9): " Sin Saltar;
        Leer intento;
        intentos <- intentos + 1;
    Mientras Que intento <> numeroSecreto;
	
    Escribir "Correcto! Lo lograste en ", intentos, " intentos";
FinAlgoritmo