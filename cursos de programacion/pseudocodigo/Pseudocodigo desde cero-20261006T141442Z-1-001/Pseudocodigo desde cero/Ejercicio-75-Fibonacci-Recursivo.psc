//mostrar la serie de Fibonacci con recursividad
//cada numero es la suma de los dos anteriores: 0 1 1 2 3 5 8 13...
//fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2), casos base fibonacci(0) = 0 y fibonacci(1) = 1
Funcion resultado <- Fibonacci(n)
    Definir resultado Como Entero;
    Si n <= 1 Entonces
        resultado <- n;
    SiNo
        resultado <- Fibonacci(n - 1) + Fibonacci(n - 2);
    FinSi
FinFuncion

Algoritmo Ejercicio75_Fibonacci_Recursivo
    Definir cantidad, i Como Entero;
    Escribir "Cuantos terminos quiere ver? " Sin Saltar;
    Leer cantidad;
    i <- 0;
    Mientras i < cantidad Hacer
        Escribir Fibonacci(i), " " Sin Saltar;
        i <- i + 1;
    FinMientras
    Escribir "";
FinAlgoritmo
