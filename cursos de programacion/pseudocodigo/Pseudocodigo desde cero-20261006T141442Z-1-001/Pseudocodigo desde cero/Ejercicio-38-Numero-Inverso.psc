//mostrar un numero al reves, por ejemplo 1234 seria 4321
//saco el ultimo digito con % 10 y lo voy agregando al inverso multiplicado por 10
Algoritmo Ejercicio38_Numero_Inverso
    Definir numero, original, inverso, signo Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    original <- numero;
    signo <- 1;
    Si numero < 0 Entonces
        signo <- -1;
        numero <- abs(numero);
    FinSi
    inverso <- 0;
    Mientras numero > 0 Hacer
        inverso <- inverso * 10 + numero % 10;
        numero <- trunc(numero / 10);
    FinMientras
    inverso <- inverso * signo;
    Escribir "El inverso de ", original, " es: ", inverso;
FinAlgoritmo
