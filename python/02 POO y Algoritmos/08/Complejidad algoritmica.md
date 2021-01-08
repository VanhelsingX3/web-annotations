# Complejidad algorítmica

## Introducción a la complejidad algorítmica

La **complejidad algorítmica** nos permite comparar la eficiencia de 2 algoritmos, esto a su vez va a predecir el **tiempo** que va a tomar resolver un problema. No solamente podemos analizar la complejidad desde la perspectiva **temporal**, también la podemos hacer desde la **espacial**, como por ejemplo cuanto espacio en memoria necesitamos.

La complejidad algorítmica temporal la podemos definir como **T(n)** el cual determinara el tiempo que demora en resolver nuestro algoritmo.

### Aproximaciones

¿Como podríamos aplicar nuestra función **T(n)**?

- Cronometrar el tiempo en el que corre un algoritmo. Sin embargo **no es una buena forma de medir** los algoritmos, ya que no se puede predecir cuanto demorara a medida que crece nuestros pasos.
- Contar los pasos con una medida abstracta de operación. Nos puede acercar a una medición ideal, sin embargo varia mucho de algoritmo en algoritmo y a medida que crece nuestro dataset existen muchos términos que llegan a ser irrelevantes.
- Contar los pasos conforme nos aproximamos al infinito pero con una medida asintótica.

```python
import time
import sys

def factorial(n):
    response = 1

    while n > 1:
        response = response * n
        n = n - 1

    return response

def factorial_recursive(n): #Después de 999 python ya no permite más recursividad
    if n == 1:
        return 1

    return n * factorial_recursive(n - 1)

if __name__ == '__main__':
    n = 2500
    sys.setrecursionlimit(n + 10)

    startingTime = time.time()
    factorial(n)
    endTime = time.time()
    print(f"Execturion time with bucle\t{endTime - startingTime}");

    startingTime = time.time()
    factorial_recursive(n)
    endTime = time.time()
    print(f"Execution time with recusive\t{endTime - startingTime}");
```

 
