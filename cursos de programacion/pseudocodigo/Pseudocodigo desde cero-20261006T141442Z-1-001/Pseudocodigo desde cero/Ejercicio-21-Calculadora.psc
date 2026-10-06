//pedir al usuario don numeros posteriormente darle opciones para hacer una operacion 
//definir numeros y opciones 
//variables son num1 num2 y resultado
Algoritmo Ejercicio_21_Calculadora
	Definir num1, num2, resultado Como Real;
	Definir opcion Como Entero;
	Escribir "Ingrese el primer numero " Sin Saltar;
	Leer num1;
	Escribir "Ingrese el segundo numero " Sin Saltar;
	Leer num2;
	Escribir "Elegir opcion ";
	Escribir "1. Suma";
	Escribir "2. Resta";
	Escribir "3. Multiplicaion ";
	Escribir "4. Dividir ";
	Leer opcion;
	Segun opcion Hacer
		1:
			resultado = num1+num2;
			Escribir "El resultado es ", resultado;
		2:
			resultado = num1-num2;
			Escribir "El resultado es ", resultado;
		3:
			resultado = num1*num2;
			Escribir "El resultado es ", resultado;
		4: 
			Si num2 = 0 Entonces//dividir entre cero debe dar error
				Escribir "Error";
			SiNo
				resultado = num1/num2;
				Escribir "El resultado es ", resultado;
			FinSi
		De Otro Modo:
		Escribir "Opcion no valida";
		
	FinSegun
FinAlgoritmo