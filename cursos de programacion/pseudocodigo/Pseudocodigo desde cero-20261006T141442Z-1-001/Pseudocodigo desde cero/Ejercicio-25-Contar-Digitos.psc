//calcula cuántos dígitos tiene un número
//trunc le quita los decimales a l coeficiente de una division por ejemplo 25.5 seria solo 25
//cuando ingrese el numero lo ire dividiendo entre 10 por ejemplo 100/10=10 10/10=1 1/10=0 
Algoritmo Ejercicio25_Contar_Digitos
	Definir numero,contador Como Entero;
	Escribir  "Ingrese un numero " Sin Saltar;
	Leer numero;
	contador = 0;
	Si numero = 0 Entonces
		contador = 1;
	SiNo
		Mientras numero > 0 Hacer
			numero = trunc(numero/10);
			contador = contador + 1;
		FinMientras
	FinSi
	Escribir "El contador tiene ", contador, " Digitos";
	
FinAlgoritmo
