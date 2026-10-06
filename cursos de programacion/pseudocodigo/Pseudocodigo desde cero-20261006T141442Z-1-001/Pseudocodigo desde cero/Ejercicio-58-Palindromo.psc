//saber si una frase es palindromo (se lee igual al derecho y al reves)
//por ejemplo "Anita lava la tina"
//primero quito los espacios y paso a mayusculas, luego comparo la primera letra con la ultima y asi
Algoritmo Ejercicio58_Palindromo
    Definir frase, limpia, letra Como Caracter;
    Definir i, largo Como Entero;
    Definir esPalindromo Como Logico;
    Escribir "Ingrese una frase: " Sin Saltar;
    Leer frase;
    limpia <- "";
    Para i <- 1 Hasta Longitud(frase) Hacer
        letra <- Mayusculas(Subcadena(frase, i, i));
        Si letra <> " " Entonces
            limpia <- Concatenar(limpia, letra);
        FinSi
    FinPara
    largo <- Longitud(limpia);
    esPalindromo <- Verdadero;
    i <- 1;
    Mientras i <= trunc(largo / 2) Y esPalindromo Hacer
        Si Subcadena(limpia, i, i) <> Subcadena(limpia, largo - i + 1, largo - i + 1) Entonces
            esPalindromo <- Falso;
        FinSi
        i <- i + 1;
    FinMientras
    Si esPalindromo Entonces
        Escribir "La frase es un palindromo";
    SiNo
        Escribir "La frase no es un palindromo";
    FinSi
FinAlgoritmo
