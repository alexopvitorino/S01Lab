using System;
using System.Collections.Generic;

class EntidadeCosmica
{
    public string Nome { get; set; }
    public string Origem { get; set; } = "Desconhecida";

    public EntidadeCosmica(string nome)
    {
        Nome = nome;
    }

    public virtual void Manifestar()
    {
        Console.WriteLine($"A entidade cósmica {Nome} se manifesta!");
        if (Origem != "Desconhecida")
        {
            Console.WriteLine($"Sua origem conhecida é: {Origem}");
        }
    }
}

class Profundo : EntidadeCosmica
{
    public Profundo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        Console.WriteLine($"[Profundo] {Nome} emerge das águas, entoando cânticos ancestrais a Dagon!");
    }
}

class MiGo : EntidadeCosmica
{
    public MiGo(string nome) : base(nome) { }

    public override void Manifestar()
    {
        base.Manifestar(); 
        Console.WriteLine($"[Mi-Go] O zumbido alienígena ecoa enquanto ele altera a realidade ao redor.");
    }
}

class Pesquisador
{
    public string Nome { get; set; }
    private List<EntidadeCosmica> catalogo = new List<EntidadeCosmica>();

    public Pesquisador(string nome)
    {
        Nome = nome;
    }

    public void Catalogar(EntidadeCosmica e)
    {
        catalogo.Add(e);
    }

    public void LerCatalogo()
    {
        Console.WriteLine($"\n--- Catálogo do Pesquisador {Nome} ---");
        foreach (var entidade in catalogo)
        {
            entidade.Manifestar();
            Console.WriteLine();
        }
    }
}

class Program
{
    static void Main()
    {
        EntidadeCosmica azathoth = new EntidadeCosmica("Azathoth");

        Profundo kthanid = new Profundo("Kthanid");
        
        MiGo alien = new MiGo("Espécime Fúngico");
        alien.Origem = "Yuggoth (Plutão)";

        Pesquisador drArmitage = new Pesquisador("Dr. Henry Armitage");
        drArmitage.Catalogar(azathoth);
        drArmitage.Catalogar(kthanid);
        drArmitage.Catalogar(alien);

        drArmitage.LerCatalogo();
    }
}
