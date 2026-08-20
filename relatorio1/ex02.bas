Dim pin As Integer = 7985
Dim acesso As Integer

Input "Digite o codigo PIN de acesso: ", acesso

While pin <> acesso
    Print "PIN invalido, tente novamente"
    Input acesso
Wend
    Print "Transacao autorizada!"
Sleep
