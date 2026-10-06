//aplicar decuento por unidades compradas 
//si son menos de 200 no hay descuento
//si son 200 a 499 5%, si son de 500 a 999 10% y si son mas de 1000 15%
Algoritmo Ejercicio18_Descuento_por_Unidades
    Definir precio, unidades, descuento, costoFinal Como Real;
    Escribir "Ingrese el precio del articulo: " Sin Saltar;
    Leer precio;
    Escribir "Ingrese las unidades compradas: " Sin Saltar;
    Leer unidades;
    Si unidades > 1000 Entonces
        descuento <- 0.15;
    SiNo
        Si unidades >= 500 Entonces
            descuento <- 0.10;
        SiNo
            Si unidades >= 200 Entonces
                descuento <- 0.05;
            SiNo
                descuento <- 0;
            FinSi
        FinSi
    FinSi
    costoFinal <- precio * unidades * (1 - descuento);
    Escribir "El costo final del pedido es: ", costoFinal;
FinAlgoritmo