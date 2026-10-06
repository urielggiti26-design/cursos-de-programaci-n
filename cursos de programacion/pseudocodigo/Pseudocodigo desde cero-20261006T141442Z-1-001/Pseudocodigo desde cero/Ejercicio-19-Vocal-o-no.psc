//determinar si una letra es vocal o no
//las letras a, e ,i ,o y u son vocales las demas no
Algoritmo Ejercicio19_Vocal_o_no
    Definir letra Como Caracter;
    Escribir "Ingrese una letra (minuscula, sin tilde): " Sin Saltar;
    Leer letra;
    Si letra = "a" Entonces
        Escribir "Es vocal";
    SiNo
        Si letra = "e" Entonces
            Escribir "Es vocal";
        SiNo
            Si letra = "i" Entonces
                Escribir "Es vocal";
            SiNo
                Si letra = "o" Entonces
                    Escribir "Es vocal";
                SiNo
                    Si letra = "u" Entonces
                        Escribir "Es vocal";
                    SiNo
                        Escribir "No es vocal";
                    FinSi
                FinSi
            FinSi
        FinSi
    FinSi
FinAlgoritmo