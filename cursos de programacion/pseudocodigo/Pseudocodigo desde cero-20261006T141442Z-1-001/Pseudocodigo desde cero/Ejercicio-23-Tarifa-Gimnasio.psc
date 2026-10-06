//determinar la tarifa de un gimnasio según el periodo (M=mañana, T=tarde) y las horas contratadas (1, 2 o 3).
Algoritmo Ejercicio23_Tarifa_Gimnasio
    Definir periodo Como Caracter;
    Definir horas Como Entero;
    Definir tarifa Como Entero;
	
    Escribir "Ingrese el periodo (M=mañana, T=tarde): " Sin Saltar;
    Leer periodo;
    Escribir "Ingrese las horas (1, 2 o 3): " Sin Saltar;
    Leer horas;
	
    Segun periodo Hacer
        "M":
            Segun horas Hacer
                1:
                    tarifa <- 20;
                2:
                    tarifa <- 30;
                3:
                    tarifa <- 40;
                De Otro Modo:
                    tarifa <- 0;
            FinSegun
        "T":
            Segun horas Hacer
                1:
                    tarifa <- 30;
                2:
                    tarifa <- 40;
                3:
                    tarifa <- 50;
                De Otro Modo:
                    tarifa <- 0;
            FinSegun
        De Otro Modo:
            tarifa <- 0;
    FinSegun
	
    Si tarifa = 0 Entonces
        Escribir "Datos no validos";
    SiNo
        Escribir "El usuario debe pagar: ", tarifa, " euros";
    FinSi
FinAlgoritmo