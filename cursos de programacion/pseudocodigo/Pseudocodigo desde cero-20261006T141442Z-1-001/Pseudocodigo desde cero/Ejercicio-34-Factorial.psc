//calcular el factorial de un numero
//el factorial de 5 es 5*4*3*2*1 = 120 y el factorial de 0 es 1
Algoritmo Ejercicio34_Factorial
    Definir numero, i, factorial Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    Si numero < 0 Entonces
        Escribir "No existe el factorial de un numero negativo";
    SiNo
        factorial <- 1;
        i <- 2;
        Mientras i <= numero Hacer
            factorial <- factorial * i;
            i <- i + 1;
        FinMientras
        Escribir "El factorial de ", numero, " es: ", factorial;
    FinSi
FinAlgoritmo
