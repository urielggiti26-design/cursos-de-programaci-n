//por valor: el subproceso recibe una copia, si la cambia la variable original no cambia
//por referencia: el subproceso recibe la variable original, si la cambia tambien cambia afuera
SubProceso DuplicarPorValor(numero Por Valor)
    numero <- numero * 2;
    Escribir "Dentro del subproceso por valor: ", numero;
FinSubProceso

SubProceso DuplicarPorReferencia(numero Por Referencia)
    numero <- numero * 2;
    Escribir "Dentro del subproceso por referencia: ", numero;
FinSubProceso

Algoritmo Ejercicio62_Paso_por_Valor_y_Referencia
    Definir x Como Entero;
    Escribir "Ingrese un numero: " Sin Saltar;
    Leer x;
    DuplicarPorValor(x);
    Escribir "Despues del paso por valor x vale: ", x;
    DuplicarPorReferencia(x);
    Escribir "Despues del paso por referencia x vale: ", x;
FinAlgoritmo
