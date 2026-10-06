//calcular la media de los numeros que ingresa el usuario hasta que ingrese un 0
//media = suma de los numeros / cantidad de numeros
Algoritmo Ejercicio33_Media_de_Numeros
    Definir numero, suma, media Como Real;
    Definir contador Como Entero;
    suma <- 0;
    contador <- 0;
    Escribir "Ingrese numeros (0 para terminar)";
    Repetir
        Escribir "Numero: " Sin Saltar;
        Leer numero;
        Si numero <> 0 Entonces
            suma <- suma + numero;
            contador <- contador + 1;
        FinSi
    Hasta Que numero = 0
    Si contador > 0 Entonces
        media <- suma / contador;
        Escribir "La media de los ", contador, " numeros es: ", media;
    SiNo
        Escribir "No se ingreso ningun numero";
    FinSi
FinAlgoritmo
