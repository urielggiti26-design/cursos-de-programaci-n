//Loteria Primitiva: comprobar un boleto contra el sorteo
//cuento cuantos numeros del boleto salieron en el sorteo y digo el premio
//6 aciertos: 1a categoria, 5 + complementario: 2a, 5: 3a, 4: 4a, 3: 5a, si coincide el reintegro: reintegro
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

SubProceso Sortear(sorteo, complementario Por Referencia, reintegro Por Referencia)
    GenerarCombinacion(sorteo);
    OrdenarCombinacion(sorteo);
    Repetir
        complementario <- Azar(49) + 1;
    Hasta Que NO Contiene(sorteo, 6, complementario)
    reintegro <- Azar(10);
FinSubProceso

Funcion aciertos <- ContarAciertos(boleto, sorteo)
    Definir aciertos, i Como Entero;
    aciertos <- 0;
    Para i <- 1 Hasta 6 Hacer
        Si Contiene(sorteo, 6, boleto[i]) Entonces
            aciertos <- aciertos + 1;
        FinSi
    FinPara
FinFuncion

SubProceso ComprobarBoleto(boleto, reintegroBoleto, sorteo, complementario, reintegroSorteo)
    Definir aciertos Como Entero;
    Definir aciertaComplementario, aciertaReintegro Como Logico;
    aciertos <- ContarAciertos(boleto, sorteo);
    aciertaComplementario <- Contiene(boleto, 6, complementario);
    aciertaReintegro <- reintegroBoleto = reintegroSorteo;
    Escribir "Aciertos: ", aciertos;
    Si aciertos = 6 Entonces
        Escribir "Premio de 1a categoria!";
    SiNo
        Si aciertos = 5 Y aciertaComplementario Entonces
            Escribir "Premio de 2a categoria (5 + complementario)";
        SiNo
            Si aciertos = 5 Entonces
                Escribir "Premio de 3a categoria";
            SiNo
                Si aciertos = 4 Entonces
                    Escribir "Premio de 4a categoria";
                SiNo
                    Si aciertos = 3 Entonces
                        Escribir "Premio de 5a categoria";
                    SiNo
                        Si aciertaReintegro Entonces
                            Escribir "Acertaste el reintegro, te devuelven lo jugado";
                        SiNo
                            Escribir "Sin premio";
                        FinSi
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinSubProceso

Algoritmo Ejercicio86_Loteria_Comprobar_Boleto
    Definir boleto, sorteo, reintegroBoleto, complementario, reintegroSorteo Como Entero;
    Dimension boleto[6];
    Dimension sorteo[6];
    Escribir "Ingrese los numeros de su boleto";
    CrearBoletoManual(boleto);
    OrdenarCombinacion(boleto);
    reintegroBoleto <- Azar(10);
    Sortear(sorteo, complementario, reintegroSorteo);
    Escribir "Tu boleto: " Sin Saltar;
    MostrarCombinacion(boleto);
    Escribir "Tu reintegro: ", reintegroBoleto;
    Escribir "Combinacion ganadora: " Sin Saltar;
    MostrarCombinacion(sorteo);
    Escribir "Complementario: ", complementario, "  Reintegro: ", reintegroSorteo;
    ComprobarBoleto(boleto, reintegroBoleto, sorteo, complementario, reintegroSorteo);
FinAlgoritmo
