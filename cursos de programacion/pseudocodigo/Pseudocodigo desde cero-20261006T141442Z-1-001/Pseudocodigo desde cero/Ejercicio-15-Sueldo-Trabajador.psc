//calcular el sueldo final de un trabajador 
// si trabajo mas de 40 horas su sueldo es 20% mas 
Algoritmo Ejercicio15_Sueldo_Trabajador
    Definir sueldoBase, horasTrabajadas, sueldoFinal Como Real;
    Escribir "Ingrese el sueldo base: " Sin Saltar;
    Leer sueldoBase;
    Escribir "Ingrese las horas trabajadas: " Sin Saltar;
    Leer horasTrabajadas;
    Si horasTrabajadas > 40 Entonces
        sueldoFinal <- sueldoBase + (sueldoBase * 0.2);
    SiNo
        sueldoFinal <- sueldoBase;
    FinSi
    Escribir "El sueldo final es: ", sueldoFinal;
FinAlgoritmo
