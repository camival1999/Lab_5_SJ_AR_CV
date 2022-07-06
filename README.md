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
El trabajo a realizar es bien sencillo dado que ya poseemos la base del Laboratorio No. 4 completa, y la única modificación es añadir condicionales para que el robot ejecute una rutina de dibujado de las iniciales de los miembros del equipo u otra según qué pulsador o entrada digital se active. Existen dos opciones: activación de la entrada digital DI_01 que implica el dibujado de las iniciales en el cuadrante X+Y+, o la activación de la entrada digital DI_02 para el dibujado sobre un plano inclinado en el cuadrante X+Y-.
El primer paso es la creación de las entradas digitales necesarias en el controlador del robot.
Dentro de Robot Studio es bastante sencillo desde la pestaña de ´Controlador´, ´Configuración´,´I/O system´ y click derecho sobre ´Signal´ para obtener el menú de ´New signal´:
![Robot studio](https://user-images.githubusercontent.com/55710287/177644681-551582dc-3816-4bd3-831a-6d2d07371ed0.png)
Una vez áquí, basta con introducir los parámetros de la señal, confirmar y reiniciar el controlador para que las señales entren en efecto.
![studio 2](https://user-images.githubusercontent.com/55710287/177645066-ce12fb4b-82e9-45f7-a853-6017f8a0c42e.png)

En el caso del robot real ya se encontraban creadas, pero en caso de ser necesario los pasos a seguir en el FlexPendant son los siguientes:

![Home](https://user-images.githubusercontent.com/55710287/177643824-22a90d09-ba42-412b-8ad3-ab0a5969cbfe.png)
![Menu](https://user-images.githubusercontent.com/55710287/177643829-92e6d99a-a46d-4683-a3e6-f31abfd9da43.png)
![Control](https://user-images.githubusercontent.com/55710287/177643834-5846a5bc-c0c1-4636-974c-2373d3d57556.png)
![configuration](https://user-images.githubusercontent.com/55710287/177643837-8e0c3673-f366-4e51-8e47-a2c34a8202c9.png)
![Inputs](https://user-images.githubusercontent.com/55710287/177643853-50167fcf-8afd-4003-a1a7-288525975119.png)
![Añadir](https://user-images.githubusercontent.com/55710287/177643865-8b880858-bbea-4498-b59f-c63ee2f5e888.png)

Una vez creada la señal, podremos verla junto a todas las demás hacia el final de la sección "Signal" y nuevamente es necesario realizar un reinicio o "Warmstart" para que los cambios entren en efecto
![Final](https://user-images.githubusercontent.com/55710287/177643872-38b7ace2-a124-43ad-a5de-03ed66f2fc99.png)

Con las señales necesarias creadas en el controlador y listas para ser interpretadas por el robot, procedemos a analizar el código de la tarea.
### Código RAPID
Como se mencionó, el código de RAPID (archivo Lab5_1SAC.mod adjunto) no cambia mucho respecto al laboratorio anterior. Partimos de la definición de los Targets, TollData y WorkObjects necesarios:

![Targets](https://user-images.githubusercontent.com/55710287/177645946-edc660ab-a923-4d46-96c6-7266da39e60d.png)

Así como la definición de cada una de las trayectorias deseadas, nuevemante empleando los mismos targets, sólo cambiando el WorkObject respecto al cual están referenciados:

![Trayectorias](https://user-images.githubusercontent.com/55710287/177646077-c38958cb-478d-42d7-895f-f917efb90c6c.png)

Y el principal cambio es en la rutina ´Main´, donde vemos el uso de condicionales ´IF´ que revisan qué botón se pulsa y con ello realiza la rutina correspondiente a cada uno:

![Main](https://user-images.githubusercontent.com/55710287/177646226-cd805962-3a3a-4b90-8e5f-41758919a052.png)


### Simulación en Robot Studio y prueba real
Para finalizar, realizamos la simulación (Hasta el minuto 2:50):
https://youtu.be/YKBcChMwJiY
(Click en la imagen para acceder directamente)

[![inicialesConBoton](https://img.youtube.com/vi/YKBcChMwJiY/mqdefault.jpg)](https://youtu.be/YKBcChMwJiY) 


Y cargamos estos módulos en el controlador del robot para verlo en acción: (CAMBIAR!!!!!!!)
https://youtu.be/txJBNLaKgSk
(Click en la imagen para acceder directamente)

[![iniciales](https://img.youtube.com/vi/txJBNLaKgSk/mqdefault.jpg)](https://youtu.be/txJBNLaKgSk) 
***
# Aplicación Pick and Place con selectores

### Explicación del proceso


### Código RAPID


### Simulación en Robot Studio

Y para finalizar, realizamos la simulación:
https://youtu.be/YKBcChMwJiY?t=170
(Click en la imagen para acceder directamente)

[![inicialesConBoton](https://img.youtube.com/vi/YKBcChMwJiY/mqdefault.jpg)](https://youtu.be/YKBcChMwJiY?t=170) 

***

# Conclusiones
- En conclusión Robot studio es una excelente herramienta de simulación que permite programar robots y sus trayectorias desde una interfaz gráfica, este tipo de herramientas al incorporar un simulador permiten realizar la detección temprana de errores en el código.
- Las configuraciones entre los puntos objetivos del robot al realizar lineas rectas o circulares deben ser similares o muy iguales, porque si no pueden existir singularidades, estas singularidades son destacadas por el sistema de simulación de robot studio.
- Al diseñar una herramienta es muy importante tener en cuenta cómo se va a realizar el acople de manera que al momento de instalarla sea posible acceder a todas las juntas y tornillos, además realizar herramientas robustas permite aumentar la presición de la tarea.
- Poder calibrar una herramienta desde el FlexPendant haciendo uso del robot permite facilitar la calibración de herramientas con geometrías complejas, además calcula el error en la calibración de manera que se pueden realizar más puntos para así reducirlo
