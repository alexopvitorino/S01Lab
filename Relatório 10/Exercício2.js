class Pistola {
  constructor(modelo) {
    this.modelo = modelo;
  }
}

class AgenteProtocolo {
  #pistola;

  constructor(codinome, modeloDaPistola) {
    this.codinome = codinome;
    this.#pistola = new Pistola(modeloDaPistola); 
  }

  usarHabilidade() {
    throw new Error("O agente precisa implementar sua habilidade!");
  }

  entrarEmCombate() {
    console.log(`Agente ${this.codinome} pronto com pistola ${this.#pistola.modelo}. Habilidade: ${this.usarHabilidade()}`);
  }
}

class Controlador extends AgenteProtocolo {
  usarHabilidade() { return "Bloqueando visão com fumaça!"; }
}

class Iniciador extends AgenteProtocolo {
  usarHabilidade() { return "Revelando posições inimigas!"; }
}

class Duelista extends AgenteProtocolo {
  usarHabilidade() { return "Avançando para o primeiro abate!"; }
}

class Esquadrao {
  #agentes;

  constructor(nome, agentes = []) {
    this.nome = nome;
    this.#agentes = agentes;
  }

  iniciarPartida() {
    console.log(`\nEsquadrão ${this.nome} iniciando partida:`);
    this.#agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.#agentes.filter(agente => agente instanceof Controlador);
  }
}

const viper = new Controlador("Viper", "Classic");
const omen = new Controlador("Omen", "Ghost");
const sova = new Iniciador("Sova", "Sheriff");
const jett = new Duelista("Jett", "Frenzy");

const time = new Esquadrao("Alpha", [viper, omen, sova, jett]);
time.iniciarPartida();

console.log("\nControladores no time:");
time.listarControladores().forEach(agente => console.log(agente.codinome));
