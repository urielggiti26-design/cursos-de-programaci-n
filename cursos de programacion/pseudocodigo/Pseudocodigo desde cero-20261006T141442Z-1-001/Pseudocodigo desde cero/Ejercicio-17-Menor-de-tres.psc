//necesito saber el numero menor de 3 numeros dados 
Algoritmo Ejercicio17_Menor_de_tres
    Definir a, b, c, menor Como Real;
    Escribir "Ingrese el primer numero: " Sin Saltar;
    Leer a;
    Escribir "Ingrese el segundo numero: " Sin Saltar;
    Leer b;
    Escribir "Ingrese el tercer numero: " Sin Saltar;
    Leer c;
    Si a < b Entonces
        Si a < c Entonces
            menor <- a;
        SiNo
            menor <- c;
        FinSi
    SiNo
        Si b < c Entonces
            menor <- b;
        SiNo
            menor <- c;
        FinSi
    FinSi
    Escribir "El numero menor es: ", menor;
FinAlgoritmo
//aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa mi cabezaaaaaaaaaaaaaaaaa