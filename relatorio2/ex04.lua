function calcularMedia(a, b)
    local media = (a + b) / 2
    return media
end

function encontrarMaior(a, b)
    if a > b then
        return a
    end
    return b
end

function calcularDiferencaAbsoluta(a, b)
    local abs = math.abs(a - b)
    return abs
end

function analisarNumeros(n1, n2, operacao)
    local result 
    if operacao == "media" then
        result = calcularMedia(n1, n2)
    elseif operacao == "maior" then
        result = encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        result = calcularDiferencaAbsoluta(n1, n2)
    else
        result = "Operacao invalida!"
    end
    return result
end

print("// ENTRADAS DO USUARIO:")

print("Digite o primeiro numero: ")
local n1 = tonumber(io.read())

print("Digite o segundo numero: ")
local n2 = tonumber(io.read())

print("Digite a operacao (media, maior ou diferenca)")
local op = io.read()

local resultado = analisarNumeros(n1, n2, op)

print("Resultado: " .. resultado)