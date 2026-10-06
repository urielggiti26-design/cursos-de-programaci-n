//encontrar el digito menor de un numero
//numero % 10 me da el ultimo digito y trunc(numero/10) le quita el ultimo digito
Algoritmo Ejercicio37_Digito_Menor
    Definir numero, digito, menor Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer numero;
    numero <- abs(numero);
    menor <- numero % 10;
    Mientras numero > 0 Hacer
        digito <- numero % 10;
        Si digito < menor Entonces
            menor <- digito;
        FinSi
        numero <- trunc(numero / 10);
    FinMientras
    Escribir "El digito menor es: ", menor;
FinAlgoritmo
