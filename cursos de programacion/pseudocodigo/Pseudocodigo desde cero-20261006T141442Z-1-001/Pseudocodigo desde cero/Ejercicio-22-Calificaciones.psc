//asignar un valor segun la nota del estudioante 
//asingnar palabras de sobresaliente, notable, bien, aprobado y suspendido
Algoritmo Ejercicio_22_Calificaciones
	Definir nota Como Entero;
	Escribir "Ingrese la nota del alumno (0-10) " Sin Saltar;
	Leer nota;
	Segun nota Hacer
		10:
			Escribir "Sobresaliente ";
		9:
			Escribir "Notable ";
		7,6:
			Escribir "Bien ";
		6:
			Escribir "Aprobado ";
		5,4,3,2,1,0:
			Escribir "Suspendido ";
		De Otro Modo:
			Escribir "Calificacion no valida ";
	FinSegun
FinAlgoritmo
