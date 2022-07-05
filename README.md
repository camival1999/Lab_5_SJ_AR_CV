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


### Código RAPID


### Simulación en Robot Studio y prueba real
Para finalizar, realizamos la simulación:
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
