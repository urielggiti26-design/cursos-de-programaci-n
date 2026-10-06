//mostrar las tablas de multiplicar del 1 al 10 usando un subproceso que muestra una tabla
SubProceso MostrarTabla(n)
    Definir i Como Entero;
    Escribir "Tabla del ", n;
    Para i <- 1 Hasta 10 Hacer
        Escribir n, " x ", i, " = ", n * i;
    FinPara
    Escribir "";
FinSubProceso

Algoritmo Ejercicio64_Tablas_con_Subprocesos
    Definir i Como Entero;
    Para i <- 1 Hasta 10 Hacer
        MostrarTabla(i);
    FinPara
FinAlgoritmo
