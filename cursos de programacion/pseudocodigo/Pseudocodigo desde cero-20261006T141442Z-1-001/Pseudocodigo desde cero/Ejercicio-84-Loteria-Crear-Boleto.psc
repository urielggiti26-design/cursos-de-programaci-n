//Loteria Primitiva: crear un boleto con 6 numeros distintos del 1 al 49
//el usuario puede elegir los numeros o dejar que se elijan al azar
//ademas cada boleto tiene un reintegro (un numero del 0 al 9)
Funcion esta <- Contiene(v, n, valor)
    Definir esta Como Logico;
    Definir i Como Entero;
    esta <- Falso;
    i <- 1;
    Mientras i <= n Y NO esta Hacer
        Si v[i] = valor Entonces
            esta <- Verdadero;
        FinSi
        i <- i + 1;
    FinMientras
FinFuncion

SubProceso GenerarCombinacion(v)
    Definir i, numero Como Entero;
    Para i <- 1 Hasta 6 Hacer
        Repetir
            numero <- Azar(49) + 1;
        Hasta Que NO Contiene(v, i - 1, numero)
        v[i] <- numero;
    FinPara
FinSubProceso

SubProceso CrearBoletoManual(boleto)
    Definir i, numero Como Entero;
    Para i <- 1 Hasta 6 Hacer
        Repetir
            Escribir "Numero ", i, " (1 al 49): " Sin Saltar;
            Leer numero;
            Si numero < 1 O numero > 49 Entonces
                Escribir "El numero debe estar entre 1 y 49";
            SiNo
                Si Contiene(boleto, i - 1, numero) Entonces
                    Escribir "Ese numero ya esta en el boleto";
                FinSi
            FinSi
        Hasta Que numero >= 1 Y numero <= 49 Y NO Contiene(boleto, i - 1, numero)
        boleto[i] <- numero;
    FinPara
FinSubProceso

SubProceso OrdenarCombinacion(v)
    Definir i, j, aux Como Entero;
    Para i <- 1 Hasta 5 Hacer
        Para j <- 1 Hasta 6 - i Hacer
            Si v[j] > v[j + 1] Entonces
                aux <- v[j];
                v[j] <- v[j + 1];
                v[j + 1] <- aux;
            FinSi
        FinPara
    FinPara
FinSubProceso

SubProceso MostrarCombinacion(v)
    Definir i Como Entero;
    Para i <- 1 Hasta 6 Hacer
        Escribir v[i], " " Sin Saltar;
    FinPara
    Escribir "";
FinSubProceso

Algoritmo Ejercicio84_Loteria_Crear_Boleto
    Definir boleto, reintegro, opcion Como Entero;
    Dimension boleto[6];
    Escribir "1. Elegir mis numeros";
    Escribir "2. Numeros al azar";
    Leer opcion;
    Si opcion = 1 Entonces
        CrearBoletoManual(boleto);
    SiNo
        GenerarCombinacion(boleto);
    FinSi
    OrdenarCombinacion(boleto);
    reintegro <- Azar(10);
    Escribir "Tu boleto: " Sin Saltar;
    MostrarCombinacion(boleto);
    Escribir "Reintegro: ", reintegro;
FinAlgoritmo
