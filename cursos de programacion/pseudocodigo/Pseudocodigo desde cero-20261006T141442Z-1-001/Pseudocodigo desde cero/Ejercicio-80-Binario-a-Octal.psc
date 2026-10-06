//pasar un numero binario a octal
//primero paso el binario a decimal y despues el decimal a octal
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

Funcion octal <- DecimalAOctal(numero)
    Definir octal Como Caracter;
    Si numero = 0 Entonces
        octal <- "0";
    SiNo
        octal <- "";
        Mientras numero > 0 Hacer
            octal <- Concatenar(ConvertirATexto(numero % 8), octal);
            numero <- trunc(numero / 8);
        FinMientras
    FinSi
FinFuncion

Algoritmo Ejercicio80_Binario_a_Octal
    Definir binario Como Caracter;
    Repetir
        Escribir "Ingrese un numero binario (solo 0 y 1): " Sin Saltar;
        Leer binario;
    Hasta Que EsBinario(binario)
    Escribir binario, " en octal es: ", DecimalAOctal(BinarioADecimal(binario));
FinAlgoritmo
