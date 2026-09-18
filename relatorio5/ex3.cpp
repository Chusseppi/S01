#include <iostream>
using namespace std;

int main() 
{
    float capacidade, carga, atual;
    atual = 0;
    int op;

    cout << "Informe a capacidade maxima de carga do drone (kg):";
    cin >> capacidade;

    cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
    cout << "1. Verificar carga" << endl;
    cout << "2. Carregar Pacote" << endl;
    cout << "3. Descarregar Pacote" << endl;
    cout << "4. Encerrar Operacao" << endl;
    cout << "Escolha uma opcao: ";
    cin >> op;

    while(op != 4){
        if(op == 1){
            cout << "Carga atual: " << atual << "/" << capacidade << " kg" << endl;
            cout << "Espaco Disponivel: " << capacidade - atual << " kg" << endl;
        }

        if(op == 2){
            cout << "Digite o peso do pacote a ser carregado (kg): ";
            cin >> carga;

            if((atual + carga) <= capacidade){
                atual = atual + carga;
                cout << "Pacote adicionado com sucesso!" << endl;
            } else {
                cout << "Alerta: Peso maximo de decolagem excedido! Operacao cancelada." << endl;
            }
        }

        if(op == 3){
            cout << "Digite o peso do pacote a ser retirado (kg): ";
            cin >> carga;
            if(carga < atual){
                atual = atual - carga;
                cout << "Pacote removido com sucesso!" << endl;
            } else {
                cout << "Alerta: Carga a ser retirada maior que a carregada! Operacao cancelada." << endl;
            }
        }

        cout << "=== SISTEMA DE CARGA DO DRONE ===" << endl;
        cout << "1. Verificar carga" << endl;
        cout << "2. Carregar Pacote" << endl;
        cout << "3. Descarregar Pacote" << endl;
        cout << "4. Encerrar Operacao" << endl;
        cout << "Escolha uma opcao: ";
        cin >> op;
    }

    cout << "Encerrando sistema de telemetria..." << endl;

    return 0;
}