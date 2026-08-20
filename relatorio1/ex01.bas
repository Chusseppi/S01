Dim peso As Single
Dim qtd As Integer
Dim meta As Single

'Declarar uma variavel como Single possibilita utilizar casas decimais'

Input "Insira seu peso em Kg" , peso
Input "Insira a quantidade de agua consumida no dia em ml" , qtd

meta = peso * 35

If qtd >= meta Then
    Print "Meta atingida!"
Else
    Print "Meta nao atingida."
End If
Sleep