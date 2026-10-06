//descomponer un numero en factores primos
//divido entre 2 mientras se pueda, luego entre 3, y asi hasta que el numero quede en 1
//por ejemplo 360 = 2 x 2 x 2 x 3 x 3 x 5
Algoritmo Ejercicio81_Factores_Primos
    Definir numero, original, divisor Como Entero;
    Definir primero Como Logico;
    Repetir
        Escribir "Ingrese un numero mayor que 1: " Sin Saltar;
        Leer numero;
    Hasta Que numero > 1
    original <- numero;
    divisor <- 2;
    primero <- Verdadero;
    Escribir original, " = " Sin Saltar;
    Mientras numero > 1 Hacer
        Si numero % divisor = 0 Entonces
            Si NO primero Entonces
                Escribir " x " Sin Saltar;
            FinSi
            Escribir divisor Sin Saltar;
            primero <- Falso;
            numero <- numero / divisor;
        SiNo
            divisor <- divisor + 1;
        FinSi
    FinMientras
    Escribir "";
FinAlgoritmo
