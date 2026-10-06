//saber si una frase contiene una letra que diga el usuario
//Subcadena(frase, i, i) me da la letra en la posicion i
//paso todo a mayusculas para que "A" y "a" cuenten igual
Algoritmo Ejercicio56_Frase_Contiene_Letra
    Definir frase, letra Como Caracter;
    Definir i, veces Como Entero;
    Escribir "Ingrese una frase: " Sin Saltar;
    Leer frase;
    Escribir "Ingrese una letra: " Sin Saltar;
    Leer letra;
    frase <- Mayusculas(frase);
    letra <- Mayusculas(Subcadena(letra, 1, 1));
    veces <- 0;
    Para i <- 1 Hasta Longitud(frase) Hacer
        Si Subcadena(frase, i, i) = letra Entonces
            veces <- veces + 1;
        FinSi
    FinPara
    Si veces > 0 Entonces
        Escribir "La frase contiene la letra ", letra, " (", veces, " veces)";
    SiNo
        Escribir "La frase no contiene la letra ", letra;
    FinSi
FinAlgoritmo
