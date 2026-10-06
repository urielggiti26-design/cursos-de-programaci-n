//rotulo que admite varias frases, cada frase va en una linea dentro del mismo marco
//el ancho del marco depende de la frase mas larga y a las cortas les relleno con espacios
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

Algoritmo Ejercicio83_Rotulo_Varias_Frases
    Definir frases, simbolo Como Caracter;
    Definir cantidad, i, masLarga Como Entero;
    Escribir "Cuantas frases va a ingresar? " Sin Saltar;
    Leer cantidad;
    Dimension frases[cantidad];
    masLarga <- 0;
    Para i <- 1 Hasta cantidad Hacer
        Escribir "Frase ", i, ": " Sin Saltar;
        Leer frases[i];
        frases[i] <- Mayusculas(frases[i]);
        Si Longitud(frases[i]) > masLarga Entonces
            masLarga <- Longitud(frases[i]);
        FinSi
    FinPara
    Escribir "Ingrese el simbolo para el marco: " Sin Saltar;
    Leer simbolo;
    Si Longitud(simbolo) = 0 Entonces
        simbolo <- "*";
    FinSi
    simbolo <- Subcadena(simbolo, 1, 1);
    Escribir LineaDe(simbolo, masLarga + 4);
    Para i <- 1 Hasta cantidad Hacer
        Escribir simbolo, " ", frases[i], LineaDe(" ", masLarga - Longitud(frases[i])), " ", simbolo;
    FinPara
    Escribir LineaDe(simbolo, masLarga + 4);
FinAlgoritmo
