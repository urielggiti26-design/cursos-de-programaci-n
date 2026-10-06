//determinar si un numero es perfecto
//un numero es perfecto si la suma de sus divisores (sin contarse a si mismo) es igual al numero
//por ejemplo 6 = 1 + 2 + 3
Algoritmo Ejercicio39_Numero_Perfecto
    Definir numero, i, suma Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    suma <- 0;
    i <- 1;
    Mientras i <= trunc(numero / 2) Hacer
        Si numero % i = 0 Entonces
            suma <- suma + i;
        FinSi
        i <- i + 1;
    FinMientras
    Si suma = numero Y numero > 0 Entonces
        Escribir numero, " es un numero perfecto";
    SiNo
        Escribir numero, " no es un numero perfecto";
    FinSi
FinAlgoritmo
