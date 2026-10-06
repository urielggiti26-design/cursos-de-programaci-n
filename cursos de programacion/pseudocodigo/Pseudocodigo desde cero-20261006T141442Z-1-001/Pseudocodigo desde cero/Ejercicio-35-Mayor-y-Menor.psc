//pedir una cantidad de numeros y mostrar cual es el mayor y cual es el menor
//el primer numero que se ingresa empieza siendo el mayor y el menor
Algoritmo Ejercicio35_Mayor_y_Menor
    Definir cantidad, i Como Entero;
    Definir numero, mayor, menor Como Real;
    Escribir "Cuantos numeros va a ingresar? " Sin Saltar;
    Leer cantidad;
    Si cantidad <= 0 Entonces
        Escribir "La cantidad debe ser mayor que cero";
    SiNo
        Escribir "Ingrese el numero 1: " Sin Saltar;
        Leer numero;
        mayor <- numero;
        menor <- numero;
        Para i <- 2 Hasta cantidad Hacer
            Escribir "Ingrese el numero ", i, ": " Sin Saltar;
            Leer numero;
            Si numero > mayor Entonces
                mayor <- numero;
            FinSi
            Si numero < menor Entonces
                menor <- numero;
            FinSi
        FinPara
        Escribir "El numero mayor es: ", mayor;
        Escribir "El numero menor es: ", menor;
    FinSi
FinAlgoritmo
