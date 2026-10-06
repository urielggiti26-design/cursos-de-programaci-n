//pasar un numero binario a decimal
//recorro el binario de izquierda a derecha: decimal = decimal * 2 + digito
//por ejemplo 1011 -> 1, 2, 5, 11
Funcion valido <- EsBinario(binario)
    Definir valido Como Logico;
    Definir i Como Entero;
    valido <- Longitud(binario) > 0;
    Para i <- 1 Hasta Longitud(binario) Hacer
        Si Subcadena(binario, i, i) <> "0" Y Subcadena(binario, i, i) <> "1" Entonces
            valido <- Falso;
        FinSi
    FinPara
FinFuncion

Funcion decimal <- BinarioADecimal(binario)
    Definir decimal, i Como Entero;
    decimal <- 0;
    Para i <- 1 Hasta Longitud(binario) Hacer
        decimal <- decimal * 2;
        Si Subcadena(binario, i, i) = "1" Entonces
            decimal <- decimal + 1;
        FinSi
    FinPara
FinFuncion

Algoritmo Ejercicio79_Binario_a_Decimal
    Definir binario Como Caracter;
    Repetir
        Escribir "Ingrese un numero binario (solo 0 y 1): " Sin Saltar;
        Leer binario;
    Hasta Que EsBinario(binario)
    Escribir binario, " en decimal es: ", BinarioADecimal(binario);
FinAlgoritmo
