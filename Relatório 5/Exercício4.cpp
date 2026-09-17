#include <iostream>

using namespace std;

int main() {
    int matriz_solar[5][5] = {0}; 
    int opcao, linha, coluna;
    
    while (true) {
        cout << "\n=== TELEMETRIA DO PAINEL SOLAR ===\n";
        cout << "1. Ativar Celula\n";
        cout << "2. Ver Mapa da Matriz\n";
        cout << "3. Sair\n";
        cout << "Escolha uma opcao: ";
        cin >> opcao;
        
        if (opcao == 1) {
            cout << "Digite a fileira (0-4): ";
            cin >> linha;
            cout << "Digite a coluna (0-4): ";
            cin >> coluna;
            
            if (matriz_solar[linha][coluna] == 0) {
                matriz_solar[linha][coluna] = 1;
                cout << "Sucesso: Celula solar ativada!\n";
            } else {
                cout << "Erro: Celula solar ja esta em operacao!\n";
            }
        } 
        else if (opcao == 2) {
            cout << "Mapa da Matriz Solar\n";
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << matriz_solar[i][j] << "] ";
                }
                cout << "\n";
            }
        } 
        else if (opcao == 3) {
            break; 
        } 
        else {
            cout << "Opcao Invalida!\n";
        }
    }
    
    int ativas = 0;
    int inativas = 0;
    
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (matriz_solar[i][j] == 1) {
                ativas++;
            } else {
                inativas++;
            }
        }
    }
    
    cout << "\n=== RELATORIO FINAL DE OPERACAO ===\n";
    cout << "Total de celulas ATIVAS: " << ativas << "\n";
    cout << "Total de celulas INATIVAS: " << inativas << "\n";
    
    cout << "Capacidade Operacional: " << (ativas / 25.0) * 100 << "%\n";
    
    return 0;
}
