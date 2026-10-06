//el enigma de la palabra oculta: el programa elige una palabra al azar y la esconde con guiones
//el usuario va diciendo letras, si la letra esta se descubre, si no pierde un intento
//gana si descubre la palabra antes de quedarse sin intentos
Algoritmo Ejercicio60_Palabra_Oculta
    Definir palabras, secreta, letra, textoPalabra Como Caracter;
    Definir descubierta, acerto Como Logico;
    Definir i, largo, intentos, aciertos Como Entero;
    Dimension palabras[5];
    palabras[1] <- "PSEINT";
    palabras[2] <- "ALGORITMO";
    palabras[3] <- "VARIABLE";
    palabras[4] <- "ARREGLO";
    palabras[5] <- "SUBPROCESO";
    secreta <- palabras[Azar(5) + 1];
    largo <- Longitud(secreta);
    Dimension descubierta[largo];
    Para i <- 1 Hasta largo Hacer
        descubierta[i] <- Falso;
    FinPara
    intentos <- 6;
    aciertos <- 0;
    Mientras intentos > 0 Y aciertos < largo Hacer
        textoPalabra <- "";
        Para i <- 1 Hasta largo Hacer
            Si descubierta[i] Entonces
                textoPalabra <- Concatenar(textoPalabra, Subcadena(secreta, i, i));
            SiNo
                textoPalabra <- Concatenar(textoPalabra, "_");
            FinSi
            textoPalabra <- Concatenar(textoPalabra, " ");
        FinPara
        Escribir "Palabra: ", textoPalabra;
        Escribir "Intentos restantes: ", intentos;
        Escribir "Ingrese una letra: " Sin Saltar;
        Leer letra;
        Si Longitud(letra) = 0 Entonces
            letra <- " ";
        FinSi
        letra <- Mayusculas(Subcadena(letra, 1, 1));
        acerto <- Falso;
        Para i <- 1 Hasta largo Hacer
            Si NO descubierta[i] Y Subcadena(secreta, i, i) = letra Entonces
                descubierta[i] <- Verdadero;
                aciertos <- aciertos + 1;
                acerto <- Verdadero;
            FinSi
        FinPara
        Si NO acerto Entonces
            intentos <- intentos - 1;
            Escribir "La letra no esta o ya la descubriste";
        FinSi
        Escribir "";
    FinMientras
    Si aciertos = largo Entonces
        Escribir "Ganaste! La palabra era ", secreta;
    SiNo
        Escribir "Perdiste! La palabra era ", secreta;
    FinSi
FinAlgoritmo
