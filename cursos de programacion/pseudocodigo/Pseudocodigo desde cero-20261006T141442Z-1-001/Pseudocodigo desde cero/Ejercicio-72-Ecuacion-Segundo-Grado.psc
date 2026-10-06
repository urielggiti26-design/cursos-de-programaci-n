//resolver una ecuacion de segundo grado ax^2 + bx + c = 0
//x = (-b +- rc(b^2 - 4ac)) / 2a
//si el discriminante (b^2 - 4ac) es negativo no tiene solucion real
SubProceso ResolverEcuacion(a, b, c)
    Definir discriminante, x1, x2 Como Real;
    Si a = 0 Entonces
        Si b = 0 Entonces
            Escribir "No es una ecuacion valida";
        SiNo
            Escribir "Es de primer grado, x = ", -c / b;
        FinSi
    SiNo
        discriminante <- b ^ 2 - 4 * a * c;
        Si discriminante < 0 Entonces
            Escribir "No tiene soluciones reales";
        SiNo
            Si discriminante = 0 Entonces
                x1 <- -b / (2 * a);
                Escribir "Tiene una solucion: x = ", x1;
            SiNo
                x1 <- (-b + rc(discriminante)) / (2 * a);
                x2 <- (-b - rc(discriminante)) / (2 * a);
                Escribir "x1 = ", x1;
                Escribir "x2 = ", x2;
            FinSi
        FinSi
    FinSi
FinSubProceso

Algoritmo Ejercicio72_Ecuacion_Segundo_Grado
    Definir a, b, c Como Real;
    Escribir "Ingrese a: " Sin Saltar;
    Leer a;
    Escribir "Ingrese b: " Sin Saltar;
    Leer b;
    Escribir "Ingrese c: " Sin Saltar;
    Leer c;
    ResolverEcuacion(a, b, c);
FinAlgoritmo
