//contar cuantas palabras tiene una frase
//empieza una palabra nueva cuando encuentro una letra que no es espacio y antes habia un espacio
Algoritmo Ejercicio59_Contar_Palabras
    Definir frase, letra Como Caracter;
    Definir i, palabras Como Entero;
    Definir dentroPalabra Como Logico;
    Escribir "Ingrese una frase: " Sin Saltar;
    Leer frase;
    palabras <- 0;
    dentroPalabra <- Falso;
    Para i <- 1 Hasta Longitud(frase) Hacer
        letra <- Subcadena(frase, i, i);
        Si letra <> " " Entonces
            Si NO dentroPalabra Entonces
                palabras <- palabras + 1;
                dentroPalabra <- Verdadero;
            FinSi
        SiNo
            dentroPalabra <- Falso;
        FinSi
    FinPara
    Escribir "La frase tiene ", palabras, " palabras";
FinAlgoritmo
