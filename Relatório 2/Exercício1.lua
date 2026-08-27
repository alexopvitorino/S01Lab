function gerarTabelaPotencias(inicio, fim, base)
    for i = inicio, fim do
        local resultado = base ^ i
        print(base .. "^" .. i .. " = " .. resultado)
    end
end

print("Digite o expoente inicial (M):")
local m = tonumber(io.read())

print("Digite o expoente final (N):")
local n = tonumber(io.read())

print("Digite a base:")
local base = tonumber(io.read())

gerarTabelaPotencias(m, n, base)
