// indicar si un numero dado es par o impar
// considerar que si es cero es par
// Solo admitir numeros enteros
// % esto me da el residuo de una division
Algoritmo Ejercicio_14_Par_o_Impar
	Definir numero, residuo Como Entero;
	Escribir 'Ingrese un numero entero 'Sin Saltar;
	Leer numero;
	residuo <- numero%2;
	Si residuo=0 Entonces
		Escribir 'El numero es par ';
	SiNo
		Escribir 'El numero es impar ';
	FinSi
FinAlgoritmo
