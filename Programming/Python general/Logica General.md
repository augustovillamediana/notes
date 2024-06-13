# Logica general de Python

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
- ### **¿Qué es un singleton?**
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
