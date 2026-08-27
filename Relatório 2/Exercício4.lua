function calcularMedia(a, b)
    return (a + b) / 2
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    return math.abs(a - b) 
end

function analisarNumeros(n1, n2, operacao)
    if operacao == "media" then
        return calcularMedia(n1, n2)
    elseif operacao == "maior" then
        return encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(n1, n2)
    else
        return "Operação inválida!"
    end
end

print("Digite o primeiro número:")
local num1 = tonumber(io.read())

print("Digite o segundo número:")
local num2 = tonumber(io.read())

print("Digite a operação (media, maior, diferenca):")
local op = io.read()

local resultado = analisarNumeros(num1, num2, op)
print("Resultado: " .. resultado)
