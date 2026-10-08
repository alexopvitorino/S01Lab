using System;

class CombatenteDeGondor
{
    public string Nome { get; private set; }
    public string Povo { get; private set; }
    public string Posto { get; private set; }
    public string Armamento { get; private set; } = "Desarmado";

    public CombatenteDeGondor(string nome, string povo, string posto)
    {
        Nome = nome;
        Povo = povo;
        Posto = posto;
    }

    public void Equipar(string arma)
    {
        Armamento = arma;
    }

    public void ApresentarUnidade()
    {
        Console.WriteLine($"Nome: {Nome} | Povo: {Povo} | Posto: {Posto}");
        if (Armamento != "Desarmado")
        {
            Console.WriteLine($"Armamento: {Armamento}");
        }
        Console.WriteLine("-------------------------");
    }
}

class Program
{
    static void Main()
    {
        CombatenteDeGondor c1 = new CombatenteDeGondor("Aragorn", "Dúnedain", "Rei");
        CombatenteDeGondor c2 = new CombatenteDeGondor("Boromir", "Gondor", "Capitão");
        CombatenteDeGondor c3 = new CombatenteDeGondor("Pippin", "Hobbit", "Guarda da Cidadela");

        c1.Equipar("Andúril");
        c2.Equipar("Espada Larga e Escudo");

        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();
    }
}
