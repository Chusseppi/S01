function gerarTabelaPontencias(inicio, fim, base)
 for i = inicio, fim do
    local aux = base ^ i

    --Senti a necessidade de criar esta variavel, pois os numeros printados estavam com uma casa decimal
    local intAux = math.tointeger(aux)
    print(base .. "^" .. i  .. " = " .. intAux)
 end 
end

print("// ENTRADAS DO USUARIO:")

print("Digite o expoente inicial (M): ")
local m = tonumber(io.read())

print("Digite o expoente final (N): ")
local n = tonumber(io.read())

print("Digite a base: ")
local base = tonumber(io.read())

gerarTabelaPontencias(m, n, base)
