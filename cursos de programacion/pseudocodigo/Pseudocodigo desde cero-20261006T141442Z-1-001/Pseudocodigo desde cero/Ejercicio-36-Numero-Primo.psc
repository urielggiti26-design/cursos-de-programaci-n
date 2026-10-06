//determinar si un numero es primo
//un numero primo solo se puede dividir entre 1 y entre si mismo, el 1 no es primo
//basta con probar divisores hasta la raiz del numero (i*i <= numero)
Algoritmo Ejercicio36_Numero_Primo
    Definir numero, i Como Entero;
    Definir esPrimo Como Logico;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    Si numero < 2 Entonces
        esPrimo <- Falso;
    SiNo
        esPrimo <- Verdadero;
        i <- 2;
        Mientras i * i <= numero Y esPrimo Hacer
            Si numero % i = 0 Entonces
                esPrimo <- Falso;
            FinSi
            i <- i + 1;
        FinMientras
    FinSi
    Si esPrimo Entonces
        Escribir numero, " es primo";
    SiNo
        Escribir numero, " no es primo";
    FinSi
FinAlgoritmo
