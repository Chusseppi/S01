#include <iostream>
#include <iomanip>
using namespace std;

//Realizei o setup em uma funcao separada para nao poluir a funcao main
void matrix_setup(int matrix[5][5]){
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            matrix[i][j] = 0;
        }
    }
}

void matrix_show(int matrix[5][5]){

    cout << "--- MAPA DA MATRIZ SOLAR ---" << endl;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            cout << "[" << matrix[i][j] << "]";
        }
        cout << endl;
    }
}

void matrix_active(int matrix[5][5]){
    int cont = 0;
    float active;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if(matrix[i][j] == 1){
                cont++;
            }
        }
    }

    active = cont * 4;

    cout << "=== RELATORIO FINAL DE OPERACAO ===" << endl;
    cout << "Total de celular ATIVAS: " << cont << endl;
    cout << "Total de celular INATIVAS: " << 25 - cont << endl;

    //Inclui a biblioteca iomanip, pois no exemplo a capacidade operacional tinha 2 casas decimais
    cout << "Capacidade operacional: "<< fixed << setprecision(2) << active << "%" << endl;
}

int main() 
{
    int matriz_solar[5][5];
    int op, coluna, fileira;

    matrix_setup(matriz_solar);

    cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
    cout << "1. Ativar Celula" << endl;
    cout << "2. Ver Mapa da Matriz" << endl;
    cout << "3. Sair" << endl;
    cout << "Escolha uma opcao: ";
    cin >> op;

    while(op != 3){

        if(op == 1){
            cout << "Digite a fileira (0-4): ";
            cin >> fileira;
            cout << "Digite a coluna (0-4): ";
            cin >> coluna;

            if(matriz_solar[fileira][coluna] == 0){
                matriz_solar[fileira][coluna] = 1;
                cout << "Sucesso: Celula solar ativada!" << endl;
            } else {
                cout << "ERRO: Celula solar ja operante!" << endl;

            }
        }

        if(op == 2){
            matrix_show(matriz_solar);
        }

        cout << "=== TELEMETRIA DO PAINEL SOLAR ===" << endl;
        cout << "1. Ativar Celula" << endl;
        cout << "2. Ver Mapa da Matriz" << endl;
        cout << "3. Sair" << endl;
        cout << "Escolha uma opcao: ";
        cin >> op;
    }

    matrix_active(matriz_solar);

    return 0;
}