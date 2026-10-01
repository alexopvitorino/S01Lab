#include <iostream>
#include <string>

using namespace std;

class Banda {
public:
    string nome;
    int integrantes;
    float potenciaSom;
    int energia;

    void duelar(Banda &rival) {
        cout << nome << " vai duelar contra " << rival.nome << "!" << endl;
        rival.energia -= potenciaSom;
    }
};

int main() {
    Banda banda1;
    banda1.nome = "Rockers";
    banda1.integrantes = 4;
    banda1.potenciaSom = 30.5;
    banda1.energia = 100;

    Banda banda2;
    banda2.nome = "Popstars";
    banda2.integrantes = 5;
    banda2.potenciaSom = 20.0;
    banda2.energia = 100;

    banda1.duelar(banda2);

    cout << "\n--- Status Atualizado ---" << endl;
    cout << banda1.nome << " -> Energia: " << banda1.energia << endl;
    cout << banda2.nome << " -> Energia: " << banda2.energia << endl;

    return 0;
}
