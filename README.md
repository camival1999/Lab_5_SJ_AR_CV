# Lab_5_SJ_AR_CV

# Laboratorio 5 - Robótica Industrial No. 2
Repositorio dedicado al desarrollo del laboratorio No. 5 de Robótica de la Universidad Nacional de Colombia
## Estudiantes: Camilo Valencia - Sara Jiménez - Alejandra Rojas
***
## Trabajo a desarrollar:

1. A partir del trabajo realizado en la práctica 4 se debe recibir dos entradas digitales (DI 01 y DI 02),
al recibir la señal del primer pulsador se deben dibujar las trayectorias en el plano y al pulsar la segunda
señal se deben ejecutar las trayectorias del plano inclinado.

2. Manejo de gripper eletroneumático. Se debe habilitar un gripper de naturaleza neumática (ventosa/
pinza neumática). En el cuadrante x(+) y(+) se deben ubicar 3 piezas en poses alcanzables pero distintas.
El robot debe estar en la capacidad de leer 3 señales digitales, donde cada señal está asociada a cada uno
de los tres objetos. En el cuadrante x(+) y(-) se debe ubicar un estante de 3 filas 2 columnas. La idea es
que con los tres pulsadores se ingrese la pieza a recoger y mediante un selector y otro pulsador se determina
la posicipón de destino en el estante. El robot deberá recoger el objeto y ubicarlo en la secciíon del estante
preestablecida.



## 1. Dibujo de trayectorias seleccionables mediante pulsadores:

### Explicación del proceso
El trabajo a realizar es bien sencillo dado que ya poseemos la base del Laboratorio No. 4 completa, y la única modificación es añadir condicionales para que el robot ejecute una rutina de dibujado de las iniciales de los miembros del equipo según qué pulsador o entrada digital se active. Existen dos opciones: activación de la entrada digital DI_01 que implica el dibujado de las iniciales en el cuadrante X+Y+, o la activación de la entrada digital DI_02 para el dibujado sobre un plano inclinado en el cuadrante X+Y-.

El primer paso es la creación de las entradas digitales necesarias en el controlador del robot.
Dentro de Robot Studio es bastante sencillo desde la pestaña de `Controlador`, `Configuración`,`I/O system` y click derecho sobre `Signal` para obtener el menú de `New signal`:

![Robot studio](https://user-images.githubusercontent.com/55710287/177644681-551582dc-3816-4bd3-831a-6d2d07371ed0.png)

Una vez aquí, basta con introducir los parámetros de la señal, confirmar y reiniciar el controlador para que las señales entren en efecto.

![studio 2](https://user-images.githubusercontent.com/55710287/177645066-ce12fb4b-82e9-45f7-a853-6017f8a0c42e.png)

En el caso del robot real ya se encontraban creadas, pero en caso de ser necesario los pasos a seguir en el FlexPendant son los siguientes:

![Home](https://user-images.githubusercontent.com/55710287/177643824-22a90d09-ba42-412b-8ad3-ab0a5969cbfe.png)
![Menu](https://user-images.githubusercontent.com/55710287/177643829-92e6d99a-a46d-4683-a3e6-f31abfd9da43.png)
![Control](https://user-images.githubusercontent.com/55710287/177643834-5846a5bc-c0c1-4636-974c-2373d3d57556.png)
![configuration](https://user-images.githubusercontent.com/55710287/177643837-8e0c3673-f366-4e51-8e47-a2c34a8202c9.png)
![Inputs](https://user-images.githubusercontent.com/55710287/177643853-50167fcf-8afd-4003-a1a7-288525975119.png)
![Añadir](https://user-images.githubusercontent.com/55710287/177643865-8b880858-bbea-4498-b59f-c63ee2f5e888.png)

Una vez creada la señal, podremos verla junto a todas las demás hacia el final de la sección "Signal" y nuevamente es necesario realizar un reinicio o "Warmstart" para que los cambios entren en efecto.

![Final](https://user-images.githubusercontent.com/55710287/177643872-38b7ace2-a124-43ad-a5de-03ed66f2fc99.png)

Con las señales necesarias creadas en el controlador, basta con crear unos botones en la pestaña `Simulación`, `Lógica de estación` y conectarlos a las entradas correspondientes, listas para ser interpretadas por el robot.

![Estacion](https://user-images.githubusercontent.com/55710287/177656022-291d7873-1e68-4e8b-b604-c9e463832f07.png)
![Botones](https://user-images.githubusercontent.com/55710287/177656025-39ea9a41-93dc-4363-82c4-da225bf68605.png)


### Código RAPID
Como se mencionó, el código de RAPID (archivo Lab5_1SAC.mod adjunto) no cambia mucho respecto al laboratorio anterior. Partimos de la definición de los Targets, ToolData y WorkObjects necesarios:

![Targets](https://user-images.githubusercontent.com/55710287/177645946-edc660ab-a923-4d46-96c6-7266da39e60d.png)

Así como la definición de cada una de las trayectorias deseadas, nuevamente empleando los mismos Targets, sólo cambiando el WorkObject respecto al cual están referenciados:

![Trayectorias](https://user-images.githubusercontent.com/55710287/177646077-c38958cb-478d-42d7-895f-f917efb90c6c.png)

Y el principal cambio es en la rutina `Main`, donde vemos el uso de condicionales `IF` que revisan qué botón se pulsa y con ello realiza la rutina correspondiente a cada uno:

![Main](https://user-images.githubusercontent.com/55710287/177646226-cd805962-3a3a-4b90-8e5f-41758919a052.png)


### Simulación en Robot Studio y prueba real
Para finalizar, realizamos la simulación (Hasta el minuto 2:50):
https://youtu.be/YKBcChMwJiY
(Click en la imagen para acceder directamente)

[![inicialesConBoton](https://img.youtube.com/vi/YKBcChMwJiY/mqdefault.jpg)](https://youtu.be/YKBcChMwJiY) 


Y cargamos estos módulos en el controlador del robot para verlo en acción: 
https://youtu.be/0R_kcTW4K4E
(Click en la imagen para acceder directamente)

[![inicialesConBotonRealReal](https://user-images.githubusercontent.com/55710287/177678329-ec0bef30-4b66-4f20-8f79-eaa4b1f24d3b.jpg)](https://youtu.be/0R_kcTW4K4E) 



***
# Aplicación Pick and Place con selectores

### Explicación del proceso
En esta parte del laboratorio se trabajó netamente con Robot Studio y la simulación de una aplicación de Pick and Place haciendo uso de tanto entradas digitales para realizar la selección de 3 posibles piezas, modeladas aquí como 3 cajas de colores, y llevarlas a 6 ubicaciones distintas dentro de una estantería mediante una herramienta actuada, como de una salida digital empleada en este caso para la actuación de una herramienta neumática ventosa.

Se parte nuevamente con la creación de las señales necesarias siguiendo el método descrito en el punto anterior dentro de Robot Studio. Una vez creadas es el momento de crear la herramienta: Un arreglo de ventosas de 100mm x 100mm que permita agarrar las cajas en múltiples orientaciones. Esto se define dentro de Robot studio como un componente inteligente, es decir, un componente que posee cierta lógica/física que lo gobierna y le permite interactuar con el entorno. 
Así la ventosa diseñada es la siguiente:

![Ventosa](https://user-images.githubusercontent.com/55710287/177655070-30a8d15e-4f41-40c2-9f04-60b23c6b3be8.png)

Vemos que consta de una parte del modelo en sí (Ventosa 100x100), unido a una serie de elementos inteligentes. 

![arbol](https://user-images.githubusercontent.com/55710287/177655075-4b4a2046-18fc-4045-968e-65bc838cfdd5.png)

El primero en importancia es el `LineSensor`. Este elemento permite detectar no solo si hay algo delante de la ventosa, sino exactamente qué elemento es el que se encuentra ahí. El siguiente es el `Attacher`, el cual es capaz de unir como un cuerpo rígido a la ventosa con cualquier elemento que se seleccione, en este caso une el elemento que esté delante de la ventosa mediante la información proporcionada por el `LineSensor` emulando la succión de la ventosa. Finalmente tenenemos el `Detacher` que sencillamente separa el cuerpo rígido creado para liberar la pieza.

Ya con la herramienta lista, pasasamos al generar el módulo de RAPID, el cual deberá usar un total de 10 entradas digitales y una salida: 3 pulsadores para escoger la pieza a mover, un selector de 6 posiciones para escoger la posición deseada y un pulsador de arranque que permita realizar el movimiento de ubicación, además de la señal de salida de activación de la ventosa.

![Estacion](https://user-images.githubusercontent.com/55710287/177655839-09bc4c90-9c1a-4a51-a670-967461ff9396.png)
![Botones](https://user-images.githubusercontent.com/55710287/177655836-b81159b4-e0c7-454a-8e5d-a2a1c42c0879.png)


### Código RAPID
Como siempre partimos de la creación de los Targets deseados, tomando en cuenta que las cajas se encuentran en posiciones distintas y se desean agarrar en orientaciones diferentes:

![Targets](https://user-images.githubusercontent.com/55710287/177656469-3a669720-c699-4e64-934c-a31c4f9ccf56.png)

Una vez definidos pasamos a generar las trayectorias, realizando movimientos en el espacio articular siempre que sea posible para reducir cantidad de código. Cabe resaltar que dentro de estas funciones es donde se realiza el manejo de la salida o ventosa, controlada mediante la salida DO_01 la cual se combina con unos pequeños retrasos con el fin de lograr una correcta adherencia de la pieza en un campo de trabajo real.

![PickUp](https://user-images.githubusercontent.com/55710287/177656769-b6a61f49-fd5d-4c44-9fc2-db0ee68cebc1.png)
![Posicion](https://user-images.githubusercontent.com/55710287/177656774-7c4504ea-9304-45fd-b65b-4e7b4630f54e.png)

Y aquí tenemos el Main, donde se implementa la lógica:

![Main](https://user-images.githubusercontent.com/55710287/177656826-37fc10a9-53fe-4243-91bb-0f9ed2240c94.png)

Como se puede ver, al comienzo del código se retorna a posición de Home, con tal de empezar en un punto de trabajo seguro. Acto seguido se queda en bucle esperando a que alguna de las entradas selectoras de caja se active, lo cual nos evita que realice algún movimiento hacia la estantería sin carga, y al recibir alguna de las entradas `SelectCaja1`, `SelectCaja3` o `SelectCaja3`, se ejecuta la rutina correspondiente para su agarre. Una vez es sujetada la caja, es posible realizar la selección de cualquier posición en la estantería mediante un selector o en este caso usando cualquiera de los botones de `Pos1` a `Pos6` para finalmente emplear el botón de `Arranque` y permitir el movimiento de la caja agarrada a la posición deseada, puesto que el código se encuentra detenido esperando recibir esa orden de arranque. Al acabar regresa a Home.

### Simulación en Robot Studio

Para finalizar, realizamos la simulación:
https://youtu.be/YKBcChMwJiY?t=170
(Click en la imagen para acceder directamente)

[![inicialesConBoton](https://img.youtube.com/vi/YKBcChMwJiY/mqdefault.jpg)](https://youtu.be/YKBcChMwJiY?t=170) 

***

# Conclusiones
- En conclusión Robot studio es una excelente herramienta de simulación que permite programar robots y sus trayectorias desde una interfaz gráfica, este tipo de herramientas al incorporar un simulador permiten realizar la detección temprana de errores en el código, así como facilitar enormemente la planeación de trayectorias, entradas, salidas y demás.
- El manejo de I/O es extremandamente importante pues es lo que en últimas define la utilidad de un manipulador: éste solo se encarga de  ubicar y orientar una herramienta, mientras que las entradas y salidas le permiten determinar qué hacer usando la información del entorno y manejar su herramienta entre otras cosas.
- RAPID posee la facilidad de emplear lógica programada en forma de condicionales, bucles, herramientas matemáticas y más, lo cual a pesar de ser menos conveniente que realizar la programación empleando métodos gráficos como lo es desde la pestaña de `Posición inicial` > `Trayectorias y Puntos`, nos proporciona una enorme flexibilidad para realizar diversas tareas e incluir lógica compleja de manera relativamente intuitiva si ya se conoce algún lenguaje de programación.

Por último queríamos dejarles un pequeño trabajo extra que realizamos.



https://user-images.githubusercontent.com/82957735/177674998-c9414f0e-0da1-4a59-8df4-eb8bb7c8922f.mp4

