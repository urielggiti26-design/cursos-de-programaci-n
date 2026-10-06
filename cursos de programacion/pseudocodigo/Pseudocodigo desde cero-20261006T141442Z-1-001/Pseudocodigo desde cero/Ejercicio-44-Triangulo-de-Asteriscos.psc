//dibujar un triangulo de asteriscos con la altura que diga el usuario
//en la fila 1 va 1 asterisco, en la fila 2 van 2 y asi sucesivamente
Algoritmo Ejercicio44_Triangulo_de_Asteriscos
    Definir altura, i, j Como Entero;
    Escribir "Ingrese la altura del triangulo: " Sin Saltar;
    Leer altura;
    Para i <- 1 Hasta altura Hacer
        Para j <- 1 Hasta i Hacer
            Escribir "* " Sin Saltar;
        FinPara
        Escribir "";
    FinPara
FinAlgoritmo
