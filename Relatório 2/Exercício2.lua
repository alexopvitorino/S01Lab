function contarOcorrencias(tabela, alvo)
    local contador = 0
    
    for i = 1, #tabela do
        if tabela[i] == alvo then
            contador = contador + 1
        end
    end
    return contador
end

print("Digite a quantidade de números (N):")
local n = tonumber(io.read())

local tabela = {}

for i = 1, n do
    print("Digite um número:")
    tabela[i] = tonumber(io.read())
end

print("Qual número deseja buscar?")
local x = tonumber(io.read())

local resultado = contarOcorrencias(tabela, x)
print("O número aparece " .. resultado .. " vez(es).")
