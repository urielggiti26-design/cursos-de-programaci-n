//pasar un numero decimal a octal (base 8) o a hexadecimal (base 16)
//igual que el binario pero dividiendo entre 8 o 16
//en hexadecimal los restos del 10 al 15 son las letras A B C D E F
Funcion resultado <- DecimalABase(numero, base)
    Definir resultado, digitos Como Caracter;
    Definir resto Como Entero;
    digitos <- "0123456789ABCDEF";
    Si numero = 0 Entonces
        resultado <- "0";
    SiNo
        resultado <- "";
        Mientras numero > 0 Hacer
            resto <- numero % base;
            resultado <- Concatenar(Subcadena(digitos, resto + 1, resto + 1), resultado);
            numero <- trunc(numero / base);
        FinMientras
    FinSi
FinFuncion

Algoritmo Ejercicio78_Decimal_a_Octal_o_Hexadecimal
    Definir numero, opcion Como Entero;
    Repetir
        Escribir "Ingrese un numero decimal (0 o mayor): " Sin Saltar;
        Leer numero;
    Hasta Que numero >= 0
    Escribir "1. Pasar a octal";
    Escribir "2. Pasar a hexadecimal";
    Leer opcion;
    Segun opcion Hacer
        1:
            Escribir numero, " en octal es: ", DecimalABase(numero, 8);
        2:
            Escribir numero, " en hexadecimal es: ", DecimalABase(numero, 16);
        De Otro Modo:
            Escribir "Opcion no valida";
    FinSegun
FinAlgoritmo
