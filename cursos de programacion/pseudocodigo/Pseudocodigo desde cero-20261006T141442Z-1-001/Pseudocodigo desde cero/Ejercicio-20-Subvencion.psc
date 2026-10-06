Algoritmo Ejercicio20_Subvencion
    Definir provincia Como Caracter;
    Definir trabajadores Como Entero;
    Definir esProvinciaValida Como Logico;
    Escribir "Ingrese la provincia de la empresa: " Sin Saltar;
    Leer provincia;
    Escribir "Ingrese el numero de trabajadores: " Sin Saltar;
    Leer trabajadores;
	
    Si provincia = "Cuenca" Entonces
        esProvinciaValida <- Verdadero;
    SiNo
        Si provincia = "Teruel" Entonces
            esProvinciaValida <- Verdadero;
        SiNo
            Si provincia = "Soria" Entonces
                esProvinciaValida <- Verdadero;
            SiNo
                esProvinciaValida <- Falso;
            FinSi
        FinSi
    FinSi
	
    Si esProvinciaValida & trabajadores >= 5 Entonces
        Escribir "La empresa recibe la subvencion";
    SiNo
        Escribir "La empresa no recibe la subvencion";
    FinSi
FinAlgoritmo
