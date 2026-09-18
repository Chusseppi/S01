#include <iostream>
using namespace std;

float calcular_confiabilidade_sistema(float probabilidades[], int tamanho) {
    float confiabilidade = 1;
    for(int j = 0; j < tamanho; j ++){
        confiabilidade = confiabilidade * probabilidades[j];
    }
    return confiabilidade; 
}

int main() 
{
    int componentes;
    float result;

    cout << "Digite a quantidade de componentes do sistema: ";
    cin >> componentes;

    float probabilidades[componentes];

    for(int i = 0; i < componentes; i++){
        cout << "Digite a probabilidade do componente " << i << " (ex: 0.95): ";
        cin >> probabilidades[i];
    }    

    result = calcular_confiabilidade_sistema(probabilidades, componentes);

    cout << "Confiabilidade total do sistema: " << result << " (" << result * 100 << "%)" << endl;

    return 0;
}