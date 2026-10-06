//subproceso que recibe 3 numeros por referencia y los deja ordenados de menor a mayor
//uso otro subproceso para intercambiar dos variables
SubProceso Intercambiar(primero Por Referencia, segundo Por Referencia)
    Definir aux Como Real;
    aux <- primero;
    primero <- segundo;
    segundo <- aux;
FinSubProceso

SubProceso OrdenarTres(a Por Referencia, b Por Referencia, c Por Referencia)
    Si a > b Entonces
        Intercambiar(a, b);
    FinSi
    Si b > c Entonces
        Intercambiar(b, c);
    FinSi
    Si a > b Entonces
        Intercambiar(a, b);
    FinSi
FinSubProceso

Algoritmo Ejercicio67_Ordenar_3_Numeros
    Definir num1, num2, num3 Como Real;
    Escribir "Ingrese el primer numero: " Sin Saltar;
    Leer num1;
    Escribir "Ingrese el segundo numero: " Sin Saltar;
    Leer num2;
    Escribir "Ingrese el tercer numero: " Sin Saltar;
    Leer num3;
    OrdenarTres(num1, num2, num3);
    Escribir "Ordenados: ", num1, " ", num2, " ", num3;
FinAlgoritmo
