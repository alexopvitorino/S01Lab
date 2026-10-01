#include <iostream>
#include <string>
#include <vector>

using namespace std;

class Hobbit {
public:
    string nome;

    virtual void fazerAtividade() {
        cout << "O hobbit " << nome << " está aproveitando um dia tranquilo na Comarca." << endl;
    }
};

class Jardineiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O jardineiro " << nome << " está cuidando das flores e plantas ao redor das tocas!" << endl;
    }
};

class Cozinheiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O cozinheiro " << nome << " está preparando o segundo café da manhã para os convidados!" << endl;
    }
};

class Fazendeiro : public Hobbit {
public:
    void fazerAtividade() override {
        cout << "O fazendeiro " << nome << " está colhendo vegetais e hortaliças em suas terras!" << endl;
    }
};

int main() {
    Jardineiro j;
    j.nome = "Samwise";

    Cozinheiro c;
    c.nome = "Bilbo";

    Fazendeiro f;
    f.nome = "Frodo";

    vector<Hobbit*> comunidade;
    comunidade.push_back(&j);
    comunidade.push_back(&c);
    comunidade.push_back(&f);

    for(int i = 0; i < comunidade.size(); i++) {
        comunidade[i]->fazerAtividade();
    }

    return 0;
}
