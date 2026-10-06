//calcular una potencia con recursividad
//base^exponente = base * base^(exponente - 1) y el caso base es base^0 = 1
Funcion resultado <- Potencia(base, exponente)
    Definir resultado Como Real;
    Si exponente = 0 Entonces
        resultado <- 1;
    SiNo
        resultado <- base * Potencia(base, exponente - 1);
    FinSi
FinFuncion

Algoritmo Ejercicio76_Potencia_Recursiva
    Definir base Como Real;
    Definir exponente Como Entero;
    Escribir "Ingrese la base: " Sin Saltar;
    Leer base;
    Repetir
        Escribir "Ingrese el exponente (entero, 0 o mayor): " Sin Saltar;
        Leer exponente;
    Hasta Que exponente >= 0
    Escribir base, " elevado a ", exponente, " es: ", Potencia(base, exponente);
FinAlgoritmo
