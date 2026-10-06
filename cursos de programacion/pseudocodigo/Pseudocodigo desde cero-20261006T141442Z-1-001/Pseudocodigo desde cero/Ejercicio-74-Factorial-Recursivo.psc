//calcular el factorial con recursividad (una funcion que se llama a si misma)
//factorial(n) = n * factorial(n - 1) y el caso base es factorial(0) = 1
Funcion resultado <- Factorial(n)
    Definir resultado Como Entero;
    Si n <= 1 Entonces
        resultado <- 1;
    SiNo
        resultado <- n * Factorial(n - 1);
    FinSi
FinFuncion

Algoritmo Ejercicio74_Factorial_Recursivo
    Definir numero Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    Si numero < 0 Entonces
        Escribir "No existe el factorial de un numero negativo";
    SiNo
        Escribir "El factorial de ", numero, " es: ", Factorial(numero);
    FinSi
FinAlgoritmo
