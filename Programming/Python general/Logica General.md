# Logica general de Python

Preguntas de Fundamentos de Python:

- ¿Qué son listas y tuplas? ¿Cuáles son las diferencias entre ellas?
- ¿Cómo se manejan las excepciones en Python?
- ¿Qué es un diccionario en Python y cómo se usa?
- Explica la diferencia entre deepcopy y shallowcopy.
- ¿Qué son las listas por comprensión (list comprehensions) y cómo se utilizan?

Preguntas de Programación Orientada a Objetos:

- ¿Qué es una clase y un objeto en Python?
- Explica los conceptos de herencia y polimorfismo con ejemplos.
- ¿Qué son los métodos __init__ y __str__?
- ¿Qué es un decorador y cómo se usa en Python?
- ¿Cómo implementarías una clase singleton en Python?

Preguntas sobre Estructuras de Datos y Algoritmos:

- ¿Cómo se implementa una pila (stack) en Python?
- Explica cómo ordenarías una lista de números en Python.
- ¿Qué es una búsqueda binaria y cómo se implementa en Python?
- ¿Cómo eliminar duplicados de una lista?
- Explica cómo encontrar el k-ésimo elemento más grande de una lista.

Preguntas sobre Funcionalidades Avanzadas:

- ¿Qué son los generadores en Python y cómo se usan?
- Explica el uso de la palabra clave yield.
- ¿Qué es una expresión lambda en Python?
- ¿Cómo manejarías archivos en Python?
- ¿Qué son las collections en Python y qué tipos ofrece?

Preguntas de Concurrencia y Multithreading:

- ¿Cuál es la diferencia entre threading y multiprocessing en Python?
- Explica el uso del GIL (Global Interpreter Lock) en Python.
- ¿Qué es una queue y cómo se usa en el contexto de threading?
- ¿Cómo se implementan tareas asíncronas en Python?

Preguntas sobre Testing y Debugging:

- ¿Qué es unittest en Python?
- ¿Cómo se escriben tests unitarios en Python?
- Explica cómo usar pdb para depurar código en Python.
- ¿Qué es pytest y cómo se diferencia de unittest?

Preguntas sobre Bibliotecas y Herramientas Comunes:

- ¿Qué es NumPy y para qué se usa?
- ¿Cómo se usa Pandas para manipulación de datos?
- Explica el uso básico de Django o Flask para desarrollo web.
- ¿Cómo se gestionan dependencias con pip y virtualenv?

Preguntas de Diseño y Buenas Prácticas:

- ¿Cómo gestionarías el manejo de dependencias en un proyecto grande?
- Explica el principio DRY (Don't Repeat Yourself).
- ¿Qué es PEP 8 y por qué es importante?
- ¿Cómo documentarías tu código en Python?





## Preguntas de Fundamentos de Python:

### **¿Qué son listas y tuplas? ¿Cuáles son las diferencias entre ellas?**

- Las **listas** y las **tuplas** son colecciones ordenadas de elementos en Python.
- La diferencia principal es que las listas son mutables (pueden cambiar después de la creación), mientras que las tuplas son inmutables (no pueden cambiar después de la creación).

### **¿Cómo se manejan las excepciones en Python?**

- Las excepciones en Python se manejan con bloques `try-except`.
- El código que puede lanzar una excepción va dentro del bloque `try`, y el manejo de la excepción específica va dentro del bloque `except`.

### **¿Qué es un diccionario en Python y cómo se usa?**

- Un diccionario en Python es una estructura de datos que mapea llaves únicas a valores.
- Se usa para almacenar y acceder rápidamente a datos asociados mediante claves, utilizando la sintaxis `diccionario[clave]`.

### **Explica la diferencia entre `deepcopy` y `shallowcopy`.**

- **`deepcopy`**: Crea una copia completamente nueva de un objeto y todos sus objetos internos de manera recursiva.
- **`shallowcopy`**: Crea una copia superficial de un objeto, copiando solo las referencias a sus objetos internos, no los objetos internos en sí.

### **¿Qué son las listas por comprensión (list comprehensions) y cómo se utilizan?**

- Las listas por comprensión son una forma compacta de crear listas en Python.
- Se utilizan para transformar o filtrar elementos de una lista existente aplicando una expresión a cada elemento dentro de corchetes `[ ]`.

```python
# Ejemplo de lista por comprensión
cuadrados = [x**2 for x in range(10)]
# Esto crea una lista de los cuadrados de 0 a 9
```

### **¿Qué es una clase y un objeto en Python?**

- Una **clase** es una plantilla para crear objetos. Define atributos y métodos que los objetos creados a partir de la clase tendrán.
- Un **objeto** es una instancia de una clase. Por ejemplo, si tienes una clase `Animal`, puedes crear un objeto `perro` que será una instancia de `Animal` con sus propios valores para los atributos definidos en la clase.
- Todos los elementos en Python son objetos, incluidos los tipos de datos básicos como enteros y cadenas.

## Preguntas de Programación Orientada a Objetos

### **Herencia y polimorfismo.**
- **Herencia**: Permite a una clase derivar de otra, heredando atributos y métodos.
- **Polimorfismo**: Permite a las subclases redefinir métodos de la superclase.

### **¿Qué son los métodos `__init__` y `__str__`?**
- **`__init__`**: Inicializa un objeto al crearlo.
- **`__str__`**: Devuelve una representación legible del objeto.

### **¿Qué es un decorador?**

- Un decorador modifica el comportamiento de una función o método.

  ```python
  # Decorador que envuelve una función
  def decorador(func):
      def envoltura():
          print("Antes de la función.")
          func()
          print("Después de la función.")
      return envoltura

  # Aplicar el decorador con @decorador
  @decorador
  def funcion_original():
      print("Dentro de la función.")

  # Llamar a la función decorada
  funcion_original()

  ```
### **¿Qué es un singleton?**
- Un singleton restringe la creación de instancias a un solo objeto.

```python
  class Singleton:
      _instancia = None  # Variable de clase para almacenar la instancia única

      def __new__(cls):
          if cls._instancia is None:
              cls._instancia = super(Singleton, cls).__new__(cls)
          return cls._instancia

  # Intentar crear múltiples instancias
  planeta1 = Singleton()
  planeta2 = Singleton()

  # Verificamos si ambas instancias son la misma
  print(planeta1 is planeta2)  # Debería imprimir True

  # Imprimir las instancias para ver que son la misma
  print(planeta1)
  print(planeta2)

```

### ¿Qué es la Inyección de Dependencias?

- La Inyección de Dependencias (Dependency Injection) es un patrón de diseño en el que una clase recibe sus dependencias desde el exterior en lugar de crearlas internamente. Esto mejora la modularidad, facilita las pruebas y el mantenimiento del código.

```python
class Servicio:
    def tarea(self):
        print("Tarea realizada")

class Cliente:
    def __init__(self, servicio):
        self.servicio = servicio

    def ejecutar(self):
        self.servicio.tarea()

# Inyección de dependencias
servicio = Servicio()
cliente = Cliente(servicio)
cliente.ejecutar()
```

### ¿Qué son los generadores en Python y cómo se usan?
Son iteradores que permiten generar valores sobre la marcha usando `yield`.
Ejemplo:
```python
def gen():
    yield 1
    yield 2
```

### Explica el uso de la palabra clave yield.

`yield` devuelve un valor y mantiene el estado de la función.
Ejemplo:
```python
def contador():
    n = 0
    while True:
        yield n
        n += 1
```

### ¿Qué es una expresión lambda en Python?

Es una función anónima, se define al momento del uso y puede tener cualquier cantidad de variables de entrada pero solo una expresion de salida.
Ejemplo:

```python

suma = lambda a, b: a + b
```
### ¿Cómo manejarías archivos en Python?

Usa open() con contexto with para leer/escribir archivos.
Ejemplo:
```python
with open('archivo.txt', 'r') as f:
    contenido = f.read()
```

### ¿Qué son las collections en Python y qué tipos ofrece?

`collections` es un módulo que ofrece tipos de datos especializados como `namedtuple`, `deque`, `Counter`, `OrderedDict`, `defaultdict`, y `ChainMap`.
Ejemplo:

```python
from collections import defaultdict
dd = defaultdict(int)
```

### ¿Qué es NumPy y para qué se usa?

NumPy es una biblioteca utilizada para realizar operaciones numéricas eficientes en Python. Su principal estructura de datos es el array, que permite almacenar y manipular datos numéricos de manera rápida y precisa.

### ¿Cómo se usa Pandas para manipulación de datos?

Pandas se utiliza principalmente con el tipo de dato DataFrame, que son estructuras de datos tabulares flexibles con etiquetas en filas y columnas. Permite la manipulación, limpieza, agregación y análisis de datos. También facilita la importación y exportación de datos desde y hacia varios formatos como CSV, Excel y bases de datos SQL.

### Explica el uso básico de Django o Flask para desarrollo web.

Django y Flask son frameworks de desarrollo web en Python:

- Django: Viene con muchas funcionalidades integradas y una estructura organizada que facilita el desarrollo de aplicaciones web complejas desde el principio.
- Flask: Es minimalista y flexible, ideal para proyectos más pequeños y permite agregar funcionalidades según sea necesario.

### ¿Cómo se gestionan dependencias con pip y virtualenv?

- pip: Es el gestor de paquetes de Python que permite instalar, actualizar y desinstalar paquetes de Python. También gestiona las dependencias entre ellos para asegurar la compatibilidad.
- virtualenv: Permite crear entornos virtuales independientes de Python, donde puedes instalar paquetes específicos y mantener diferentes versiones de Python y sus dependencias sin interferir con el sistema base.


### ¿Cómo gestionarías el manejo de dependencias en un proyecto grande?

- Utilizaría virtualenv para crear entornos virtuales independientes y requirements.txt para especificar las versiones exactas de las bibliotecas requeridas. Esto asegura que todos los desarrolladores trabajen con las mismas versiones de las dependencias.
### Explica el principio DRY (Don't Repeat Yourself).

- DRY significa "No te repitas". Se refiere a la práctica de escribir código de manera que cada parte del conocimiento o lógica esté representada por una sola y clara representación autoritativa en el sistema. Evita la duplicación de código, promueve la reutilización y facilita el mantenimiento del código.

### ¿Qué es PEP 8 y por qué es importante?

- PEP 8 es una guía de estilo para escribir código Python. Es importante porque promueve la legibilidad y consistencia del código, lo que facilita la colaboración entre desarrolladores y la mantenibilidad del código a lo largo del tiempo.

### ¿Cómo documentarías tu código en Python?

- Para documentar un programa grande, utilizaría herramientas como documentación incorporada (docstrings), y para proyectos extensos, consideraría el uso de sistemas de documentación como Sphinx. Esto permite mantener una documentación estructurada y accesible que describe el propósito, la estructura y el funcionamiento del código.



## Preguntas de data science

### ¿Cómo manejarías datos faltantes en un conjunto de datos?

- Eliminando filas/columnas
- Imputación con media/mediana/moda
- Técnicas avanzadas como KNN (K Nearest Neighbors) Imputación

### Explica el sesgo y la varianza en Machine Learning.

- Sesgo: Error debido a suposiciones simplificadas en el modelo.
- Varianza: Error debido a la complejidad del modelo.
  Es importante encontrar un balance entre ambos para evitar underfitting o overfitting.

### ¿Qué es un p-valor?

Probabilidad de observar resultados tan extremos como los obtenidos, bajo la hipótesis nula. Un p-valor bajo indica que debemos rechazar la hipótesis nula.
