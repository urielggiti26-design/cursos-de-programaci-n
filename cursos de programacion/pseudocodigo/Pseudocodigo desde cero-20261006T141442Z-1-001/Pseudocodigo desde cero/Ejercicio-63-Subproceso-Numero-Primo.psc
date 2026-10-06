//funcion que recibe un numero y devuelve Verdadero si es primo y Falso si no
//la uso para mostrar todos los primos hasta un numero que diga el usuario
Funcion primo <- EsPrimo(numero)
    Definir primo Como Logico;
    Definir i Como Entero;
    Si numero < 2 Entonces
        primo <- Falso;
    SiNo
        primo <- Verdadero;
        i <- 2;
        Mientras i * i <= numero Y primo Hacer
            Si numero % i = 0 Entonces
                primo <- Falso;
            FinSi
            i <- i + 1;
        FinMientras
    FinSi
FinFuncion

Algoritmo Ejercicio63_Subproceso_Numero_Primo
    Definir numero, limite, i Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    Si EsPrimo(numero) Entonces
        Escribir numero, " es primo";
    SiNo
        Escribir numero, " no es primo";
    FinSi
    Escribir "Hasta que numero quiere ver los primos? " Sin Saltar;
    Leer limite;
    Para i <- 1 Hasta limite Hacer
        Si EsPrimo(i) Entonces
            Escribir i, " " Sin Saltar;
        FinSi
    FinPara
    Escribir "";
FinAlgoritmo
