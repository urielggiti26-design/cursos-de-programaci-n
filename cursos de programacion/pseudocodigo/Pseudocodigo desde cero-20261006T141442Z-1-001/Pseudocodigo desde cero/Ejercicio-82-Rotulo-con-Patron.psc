//mostrar una frase dentro de un rotulo (un marco) hecho con el simbolo que diga el usuario
//el marco mide lo que mide la frase + 4 (simbolo, espacio, frase, espacio, simbolo)
//    **************
//    * HOLA MUNDO *
//    **************
Funcion linea <- LineaDe(simbolo, cantidad)
    Definir linea Como Caracter;
    Definir i Como Entero;
    linea <- "";
    i <- 1;
    Mientras i <= cantidad Hacer
        linea <- Concatenar(linea, simbolo);
        i <- i + 1;
    FinMientras
FinFuncion

Algoritmo Ejercicio82_Rotulo_con_Patron
    Definir frase, simbolo Como Caracter;
    Definir ancho Como Entero;
    Escribir "Ingrese una frase: " Sin Saltar;
    Leer frase;
    Escribir "Ingrese el simbolo para el marco: " Sin Saltar;
    Leer simbolo;
    Si Longitud(simbolo) = 0 Entonces
        simbolo <- "*";
    FinSi
    simbolo <- Subcadena(simbolo, 1, 1);
    frase <- Mayusculas(frase);
    ancho <- Longitud(frase) + 4;
    Escribir LineaDe(simbolo, ancho);
    Escribir simbolo, " ", frase, " ", simbolo;
    Escribir LineaDe(simbolo, ancho);
FinAlgoritmo
