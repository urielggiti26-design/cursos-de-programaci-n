//calcular la media de un arreglo y cambiar por la media los valores que se alejen de ella
//mas de una distancia que diga el usuario
Funcion resultado <- Media(v, n)
    Definir resultado, suma Como Real;
    Definir i Como Entero;
    suma <- 0;
    Para i <- 1 Hasta n Hacer
        suma <- suma + v[i];
    FinPara
    resultado <- suma / n;
FinFuncion

SubProceso ModificarLejanos(v, n, valorMedia, distancia)
    Definir i Como Entero;
    Para i <- 1 Hasta n Hacer
        Si abs(v[i] - valorMedia) > distancia Entonces
            v[i] <- valorMedia;
        FinSi
    FinPara
FinSubProceso

SubProceso MostrarArreglo(v, n)
    Definir i Como Entero;
    Para i <- 1 Hasta n Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
FinSubProceso

Algoritmo Ejercicio73_Modificar_Valores_Lejos_de_la_Media
    Definir n, i Como Entero;
    Definir v, valorMedia, distancia Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer n;
    Dimension v[n];
    Para i <- 1 Hasta n Hacer
        Escribir "Ingrese el numero ", i, ": " Sin Saltar;
        Leer v[i];
    FinPara
    Escribir "Distancia maxima permitida a la media: " Sin Saltar;
    Leer distancia;
    valorMedia <- Media(v, n);
    Escribir "La media es: ", valorMedia;
    Escribir "Arreglo original: " Sin Saltar;
    MostrarArreglo(v, n);
    ModificarLejanos(v, n, valorMedia, distancia);
    Escribir "Arreglo modificado: " Sin Saltar;
    MostrarArreglo(v, n);
FinAlgoritmo
