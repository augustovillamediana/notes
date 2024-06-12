from sys import argv
script, user_name = argv
prompt = '> '
print(f"Hola {user_name}, soy el script {script}.")
print("Me gustaria hacerte algunas preguntas.")
print(f"¿Te caigo bien {user_name}?")
likes = input(prompt)
print(f"¿Donde vives {user_name}?")
lives = input(prompt)
print("Que tipo de computadora tienes?")
computer = input(prompt)
print(f"""
Bien, has dicho que {likes} acerca de mi.
Vives en {lives}. No se bien donde queda eso.
Y tienes una compu {computer}. Bien.
""")
