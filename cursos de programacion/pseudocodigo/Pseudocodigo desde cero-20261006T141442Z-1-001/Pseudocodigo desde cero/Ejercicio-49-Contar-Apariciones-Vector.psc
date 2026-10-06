//llenar un arreglo con numeros y contar cuantas veces aparece un numero que diga el usuario
Algoritmo Ejercicio49_Contar_Apariciones_Vector
    Definir n, i, contador Como Entero;
    Definir v, buscado Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Escribir "Que numero quiere buscar? " Sin Saltar;
    Leer buscado;
    contador <- 0;
    Para i <- 1 Hasta n Hacer
        Si v[i] = buscado Entonces
            contador <- contador + 1;
        FinSi
    FinPara
    Escribir "El numero ", buscado, " aparece ", contador, " veces";
FinAlgoritmo
