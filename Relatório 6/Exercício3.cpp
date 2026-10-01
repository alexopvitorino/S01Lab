#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
public:
    string nome;

    virtual void seApresentar() {
        cout << "Sou um membro da comunidade Inatel: " << nome << endl;
    }
};

class Aluno : public MembroInatel {
public:
    string curso;

    void seApresentar() override {
        cout << "Meu nome é " << nome << " e estudo no curso de " << curso << "." << endl;
    }
};

class Professor : public MembroInatel {
public:
    string disciplina;

    void seApresentar() override {
        cout << "Meu nome é " << nome << " e leciono a disciplina de " << disciplina << "." << endl;
    }
};

int main() {
    Aluno aluno;
    aluno.nome = "Alex";
    aluno.curso = "Software";

    Professor prof;
    prof.nome = "Pedro";
    prof.disciplina = "POO";

    aluno.seApresentar();
    prof.seApresentar();

    return 0;
}
