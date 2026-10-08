using System;
using System.Collections.Generic;

class Grimorio
{
    public string FeiticoFavorito { get; set; } = "Nenhum";

    public void Abrir()
    {
        Console.WriteLine($"O Grimório foi aberto. Feitiço favorito: {FeiticoFavorito}");
    }
}

class Companheiro
{
    public string Nome { get; set; }
    public string Funcao { get; set; }

    public Companheiro(string nome, string funcao)
    {
        Nome = nome;
        Funcao = funcao;
    }

    public void Apresentar()
    {
        Console.WriteLine($"- {Nome}, a função é {Funcao}.");
    }
}

class Maga
{
    public string Nome { get; set; }
    public Grimorio MeuGrimorio { get; private set; }
    private List<Companheiro> grupo = new List<Companheiro>();

    public Maga(string nome)
    {
        Nome = nome;
        MeuGrimorio = new Grimorio();

    public void Recrutar(Companheiro c)
    {
        grupo.Add(c);
    }

    public void MostrarGrupo()
    {
        Console.WriteLine($"\nGrupo da maga {Nome}:");
        foreach (var comp in grupo)
        {
            comp.Apresentar();
        }
    }
}

class Program
{
    static void Main()
    {
        Companheiro c1 = new Companheiro("Stark", "Guerreiro");
        Companheiro c2 = new Companheiro("Heiter", "Sacerdote");

        Maga frieren = new Maga("Frieren");
        
        frieren.Recrutar(c1);
        frieren.Recrutar(c2);

        frieren.MeuGrimorio.FeiticoFavorito = "Zoltraak";

        frieren.MostrarGrupo();
        frieren.MeuGrimorio.Abrir();
    }
}
