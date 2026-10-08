using System;
using System.Collections.Generic;

class Pokemon
{
    public string Especie { get; set; }
    public int Nivel { get; set; }

    public Pokemon(string especie, int nivel)
    {
        Especie = especie;
        Nivel = nivel;
    }

    public virtual void Atacar()
    {
        Console.WriteLine($"{Especie} (Lvl {Nivel}) usa um ataque comum!");
    }
}

class TipoPlanta : Pokemon
{
    public TipoPlanta(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        Console.WriteLine($"{Especie} (Lvl {Nivel}) usa Chicote de Vinha!");
    }
}

class TipoEletrico : Pokemon
{
    public TipoEletrico(string especie, int nivel) : base(especie, nivel) { }

    public override void Atacar()
    {
        base.Atacar(); 
        Console.WriteLine($"E em seguida, {Especie} solta uma poderosa descarga elétrica!");
    }
}

class Program
{
    static void Main()
    {
        List<Pokemon> equipe = new List<Pokemon>
        {
            new Pokemon("Eevee", 10),
            new TipoPlanta("Bulbasaur", 15),
            new TipoEletrico("Pikachu", 20)
        };

        foreach (Pokemon p in equipe)
        {
            p.Atacar();
            Console.WriteLine("---");
        }
    }
}
