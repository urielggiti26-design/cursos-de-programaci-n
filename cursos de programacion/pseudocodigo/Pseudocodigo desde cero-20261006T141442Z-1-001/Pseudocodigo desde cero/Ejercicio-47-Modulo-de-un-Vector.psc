//calcular el modulo de un vector
//el modulo es la raiz cuadrada de la suma de los cuadrados de sus componentes
//por ejemplo el modulo de (3, 4) es rc(3^2 + 4^2) = 5
Algoritmo Ejercicio47_Modulo_de_un_Vector
    Definir n, i Como Entero;
    Definir v, suma, modulo Como Real;
    Escribir "Cuantas componentes tiene el vector? " Sin Saltar;
    Leer n;
    Dimension v[n];
    suma <- 0;
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese la componente ", i, ": " Sin Saltar;
        Leer v[i];
        suma <- suma + v[i] ^ 2;
    FinPara
    modulo <- rc(suma);
    Escribir "El modulo del vector es: ", modulo;
FinAlgoritmo
