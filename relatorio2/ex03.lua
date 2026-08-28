function filtrarMaiores(tabela, limite)
    local tabelaFiltrada = {}
    for i = 1, #tabela do
        if tabela[i] > limite then
            table.insert(tabelaFiltrada, tabela[i])
        end
    end
    print("// ELEMENTOS MAIORES QUE " .. limite)
    for i = 1, #tabelaFiltrada do
        print(tabelaFiltrada[i])
    end
end

print("// ENTRADAS DO USUARIO:")

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local tabela = {}

for i = 1, n do
    print("Digite o elemento " .. i .. ": ")
    local aux = tonumber(io.read())
    table.insert(tabela, aux)
end

print("Digite o valor limite (K): ")
local k = tonumber(io.read())

filtrarMaiores(tabela, k)