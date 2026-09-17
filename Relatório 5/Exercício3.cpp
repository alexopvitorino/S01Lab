#include <iostream>

using namespace std;

int main() {
    float max_carga, carga_atual = 0.0, peso;
    int opcao;
    
    cout << "Informe a capacidade maxima de carga do drone (kg): ";
    cin >> max_carga;
    
    do {
        cout << "\n=== SISTEMA DE CARGA DO DRONE ===\n";
        cout << "1. Verificar Carga\n";
        cout << "2. Carregar Pacote\n";
        cout << "3. Descarregar Pacote\n";
        cout << "4. Encerrar Operacao\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            cout << "Carga Atual: " << carga_atual << " kg / " << max_carga << " kg\n";
            cout << "Espaco Disponivel: " << max_carga - carga_atual << " kg\n";
        } 
        else if (opcao == 2) {
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> peso;
            if (carga_atual + peso > max_carga) {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada.\n";
            } else {
                carga_atual += peso;
                cout << "Pacote adicionado com sucesso!\n";
            }
        } 
        else if (opcao == 3) {
            cout << "Digite o peso a ser removido (kg): ";
            cin >> peso;
            if (carga_atual - peso < 0) {
                cout << "Alerta: Nao ha carga suficiente para remover este peso!\n";
            } else {
                carga_atual -= peso;
                cout << "Pacote removido com sucesso!\n";
            }
        } 
        else if (opcao == 4) {
            cout << "Encerrando sistema de telemetria...\n";
        } 
        else {
            cout << "Opcao invalida! Tente novamente.\n";
        }
        
    } while (opcao != 4);
    
    return 0;
}
