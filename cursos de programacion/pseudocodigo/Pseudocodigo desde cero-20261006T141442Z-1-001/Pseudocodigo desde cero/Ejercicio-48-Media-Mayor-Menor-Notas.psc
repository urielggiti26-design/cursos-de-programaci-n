//guardar unas notas en un arreglo y calcular la media, la nota mayor y la nota menor
Algoritmo Ejercicio48_Media_Mayor_Menor_Notas
    Definir n, i Como Entero;
    Definir notas, suma, media, mayor, menor Como Real;
    Escribir "Cuantas notas va a ingresar? " Sin Saltar;
    Leer n;
    Dimension notas[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la nota ", i, ": " Sin Saltar;
        Leer notas[i];
    FinPara
    suma <- 0;
    mayor <- notas[1];
    menor <- notas[1];
    Para i <- 1 Hasta n Hacer
        suma <- suma + notas[i];
        Si notas[i] > mayor Entonces
            mayor <- notas[i];
        FinSi
        Si notas[i] < menor Entonces
            menor <- notas[i];
        FinSi
    FinPara
    media <- suma / n;
    Escribir "La media es: ", media;
    Escribir "La nota mayor es: ", mayor;
    Escribir "La nota menor es: ", menor;
FinAlgoritmo
