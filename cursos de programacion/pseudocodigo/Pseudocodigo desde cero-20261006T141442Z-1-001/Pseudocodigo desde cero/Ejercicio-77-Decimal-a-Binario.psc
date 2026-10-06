//pasar un numero decimal a binario
//se divide entre 2 y se van guardando los restos, el binario son los restos al reves
Funcion binario <- DecimalABinario(numero)
    Definir binario Como Caracter;
    Si numero = 0 Entonces
        binario <- "0";
    SiNo
        binario <- "";
        Mientras numero > 0 Hacer
            binario <- Concatenar(ConvertirATexto(numero % 2), binario);
            numero <- trunc(numero / 2);
        FinMientras
    FinSi
FinFuncion

Algoritmo Ejercicio77_Decimal_a_Binario
    Definir numero Como Entero;
    Repetir
        Escribir "Ingrese un numero decimal (0 o mayor): " Sin Saltar;
        Leer numero;
    Hasta Que numero >= 0
    Escribir numero, " en binario es: ", DecimalABinario(numero);
FinAlgoritmo
