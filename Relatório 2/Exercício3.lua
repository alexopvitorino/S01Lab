function filtrarMaiores(tabela, limite)
    local novaTabela = {}
    local posicao = 1 
    
    for i = 1, #tabela do
        if tabela[i] > limite then
            novaTabela[posicao] = tabela[i]
            posicao = posicao + 1 
        end
    end
    return novaTabela
end

print("Quantidade de números:")
local n = tonumber(io.read())

local tabela = {}

for i = 1, n do
    print("Digite um número:")
    tabela[i] = tonumber(io.read())
end

print("Digite o limite (K):")
local k = tonumber(io.read())

local resultado = filtrarMaiores(tabela, k)

print("Números maiores que " .. k .. ":")
for i = 1, #resultado do
    print(resultado[i])
end
