function contarOcorrencias(tabela, alvo)
    local count = 0
    for i = 1, #tabela do
        if tabela[i] == alvo then
            count = count + 1
        end
    end
    print("O numero " .. alvo .. " aparece " .. count .. " vez(es) na tabela")
end

print("// ENTRADAS DO USUARIO:")

print("Digite a quantidade de elementos (N): ")
local n = tonumber(io.read())

local elementos = {}

for i = 1, n do
    print("Digite o elemento " .. i .. ": ")
    local aux = tonumber(io.read())
    table.insert(elementos, aux)
end

print("Digite o numero X a ser buscado: ")
local search = tonumber(io.read())

contarOcorrencias(elementos, search)