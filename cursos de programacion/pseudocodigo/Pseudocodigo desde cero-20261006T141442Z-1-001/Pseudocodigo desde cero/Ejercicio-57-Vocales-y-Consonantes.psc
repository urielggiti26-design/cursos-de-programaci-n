//contar cuantas vocales y cuantas consonantes tiene una frase
//si es una letra entre A y Z y no es vocal entonces es consonante
Algoritmo Ejercicio57_Vocales_y_Consonantes
    Definir frase, letra Como Caracter;
    Definir i, vocales, consonantes Como Entero;
    Escribir "Ingrese una frase: " Sin Saltar;
    Leer frase;
    frase <- Mayusculas(frase);
    vocales <- 0;
    consonantes <- 0;
    Para i <- 1 Hasta Longitud(frase) Hacer
        letra <- Subcadena(frase, i, i);
        Si letra = "A" O letra = "E" O letra = "I" O letra = "O" O letra = "U" Entonces
            vocales <- vocales + 1;
        SiNo
            Si letra >= "A" Y letra <= "Z" Entonces
                consonantes <- consonantes + 1;
            FinSi
        FinSi
    FinPara
    Escribir "Vocales: ", vocales;
    Escribir "Consonantes: ", consonantes;
FinAlgoritmo
