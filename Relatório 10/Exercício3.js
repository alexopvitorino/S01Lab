class FichaDeCriatura {
  constructor(criatura, nivelDePerigo) {
    this.criatura = criatura;
    this.nivelDePerigo = nivelDePerigo;
  }
  descrever() {
    return `Criatura: ${this.criatura} | Perigo: ${this.nivelDePerigo}`;
  }
}

class DiarioMisterioso {
  #fichas = [];

  constructor(numero) {
    this.numero = numero;
  }

  anotar(criatura, nivelDePerigo) {
    const novaFicha = new FichaDeCriatura(criatura, nivelDePerigo);
    this.#fichas.push(novaFicha);
  }

  exibirFichas() {
    console.log(`\nDiário Nº ${this.numero} - Fichas:`);
    this.#fichas.forEach(ficha => console.log(ficha.descrever()));
  }
}

class Funcionario {
  constructor(nome, cargo) {
    this.nome = nome;
    this.cargo = cargo;
  }
}

class CabanaDoMisterio {
  #funcionarios = [];

  constructor(dono) {
    this.dono = dono;
  }

  contratar(funcionario) {
    this.#funcionarios.push(funcionario);
  }

  abrirAsPortas() {
    console.log(`\nCabana do dono ${this.dono} aberta. Equipe:`);
    this.#funcionarios.forEach(f => console.log(`- ${f.nome} (${f.cargo})`));
  }
}

const diario = new DiarioMisterioso(3);
diario.anotar("Gnomos", "Baixo");
diario.anotar("Multi-Urso", "Médio");
diario.exibirFichas();

const wendy = new Funcionario("Wendy", "Caixa");
const soos = new Funcionario("Soos", "Faz-Tudo");

const cabana = new CabanaDoMisterio("Stan Pines");
cabana.contratar(wendy);
cabana.contratar(soos);
cabana.abrirAsPortas();
