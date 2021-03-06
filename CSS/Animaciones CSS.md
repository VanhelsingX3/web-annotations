 

# Animaciones con CSS

Para crear una secuencia de animación CSS, tú estilizarás el elemento que quieras animar con la propiedad animation y sus sub-propiedades.

Con ellas podemos no solo configurar el ritmo y la duración de la animación sino otros detalles sobre la secuencia de la animación.

Con ellas no configuramos la apariencia actual de la animación, para ello disponemos de @keyframes como describiremos más adelante .

### Las subpropiedades de animation son:

- **animation-delay:** Tiempo de retardo entre el momento en que el elemento se carga y el comienzo de la secuencia de la animación.

- **animation-direction:** Indica si la animación debe retroceder hasta el fotograma de inicio al finalizar la secuencia o si debe comenzar desde el principio al llegar al final.

- **animation-duration:** Indica la cantidad de tiempo que la animación consume en completar su ciclo (duración).

- **animation-iteration-count:** El número de veces que se repite. Podemos indicar infinite para repetir la animación indefinidamente.

- **animation-name:** Especifica el nombre de la regla @keyframes que describe los fotogramas de la animación.

- **animation-play-state:** Permite pausar y reanudar la secuencia de la animación.

- **animation-timing-function:** Indica el ritmo de la animación, es decir, como se muestran los fotogramas de la animación, estableciendo curvas de aceleración.

- **animation-fill-mode:** Especifica qué valores tendrán las propiedades después de finalizar la animación (los de antes de ejecutarla, los del último fotograma de la animación o ambos).

