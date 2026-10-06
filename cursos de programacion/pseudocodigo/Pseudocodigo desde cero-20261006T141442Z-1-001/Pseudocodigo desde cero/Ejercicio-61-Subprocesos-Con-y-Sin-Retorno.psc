//un subproceso sin retorno solo hace una accion (por ejemplo mostrar algo)
//una funcion con retorno calcula algo y devuelve el valor al algoritmo principal
SubProceso MostrarSaludo(nombre)
    Escribir "Hola ", nombre, ", bienvenido a los subprocesos";
FinSubProceso

Funcion resultado <- Sumar(a, b)
    Definir resultado Como Real;
    resultado <- a + b;
FinFuncion

Algoritmo Ejercicio61_Subprocesos_Con_y_Sin_Retorno
    Definir nombre Como Caracter;
    Definir num1, num2, total Como Real;
    Escribir "Ingrese su nombre: " Sin Saltar;
    Leer nombre;
    MostrarSaludo(nombre);//sin retorno: solo lo llamo
    Escribir "Ingrese el primer numero: " Sin Saltar;
    Leer num1;
    Escribir "Ingrese el segundo numero: " Sin Saltar;
    Leer num2;
    total <- Sumar(num1, num2);//con retorno: guardo lo que devuelve
    Escribir "La suma es: ", total;
FinAlgoritmo
