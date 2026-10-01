#include <iostream>
#include <string>

using namespace std;

class LinkSocial {
private:
    string nome;
    string arcana;
    int rank;

public:
    void setNome(string n) { nome = n; }
    void setArcana(string a) { arcana = a; }
    void setRank(int r) { rank = r; }

    string getNome() { return nome; }
    string getArcana() { return arcana; }
    int getRank() { return rank; }

    void subirRank() {
        rank++;
    }
};

int main() {
    LinkSocial protagonista;
    
    protagonista.setNome("Ryuji");
    protagonista.setArcana("Chariot");
    protagonista.setRank(1);

    protagonista.subirRank();

    cout << "Dados do Link Social:" << endl;
    cout << "Nome: " << protagonista.getNome() << endl;
    cout << "Arcana: " << protagonista.getArcana() << endl;
    cout << "Rank Atual: " << protagonista.getRank() << endl;

    return 0;
}
