#include <iostream>

using namespace std;

int main() {
    // Hola Mundo 
    cout << "Hola Mundo";
    
    // Variables
    int edad = 18;
    const char letra = 'W'; // Entrega error cuando se intenta cambiar
    cout << edad << endl; // endl salto de linea
    cout << letra << endl;

    // Listas
    int lista_edades[] = {1,23,64,42,53,24,52};
    cout << lista_edades[1];
}

