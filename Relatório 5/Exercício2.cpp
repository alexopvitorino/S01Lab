#include <iostream>

using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float total = 1.0;
    for (int i = 0; i < tamanho; i++) {
        total = total * probabilidades[i];
    }
    return total;
}

int main() {
    int n;
    
    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> n;
    
    float probabilidades [100];
    
    for (int i = 0; i < n; i++) {
        cout << "Digite a probabilidade do componente " << i + 1 << " (ex: 0.95): ";
        cin >> probabilidades[i];
    }
    
    float resultado = calcular_confiabilidade_sistema(probabilidades, n);
    
    cout << "Confiabilidade total do sistema: " << resultado << " (" << resultado * 100 << "%)" << endl;
    
    return 0;
}
