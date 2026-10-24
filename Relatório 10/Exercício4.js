class UsuarioDeNen {
  constructor(nome) {
    this.nome = nome;
  }
  atacar(alvo) {
    console.log(`${this.nome} usou um ataque genérico de Nen na Aranha ${alvo.nome}!`);
  }
}

class Intensificador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Intensificador) focou sua aura em um soco devastador contra ${alvo.nome}!`);
  }
}

class Transmutador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Transmutador) transformou sua aura em eletricidade e atacou ${alvo.nome}!`);
  }
}

class Materializador extends UsuarioDeNen {
  atacar(alvo) {
    console.log(`${this.nome} (Materializador) criou correntes de Nen para prender ${alvo.nome}!`);
  }
}

class Aranha {
  constructor(nome, numero) {
    this.nome = nome;
    this.numero = numero;
  }
}

class TrupeFantasma {
  #aranhas;

  constructor(cidade, aranhas = []) {
    this.cidade = cidade;
    this.#aranhas = aranhas;
  }

  revelarAranhas() {
    console.log(`\nAranhas avistadas em ${this.cidade}:`);
    this.#aranhas.forEach(aranha => console.log(`#${aranha.numero} - ${aranha.nome}`));
  }

  buscarAranha(numero) {
    return this.#aranhas.find(aranha => aranha.numero === numero);
  }
}

const chrollo = new Aranha("Chrollo Lucilfer", 0);
const hisoka = new Aranha("Hisoka Morow", 4);

const trupe = new TrupeFantasma("Yorknew City", [chrollo, hisoka]);
trupe.revelarAranhas();

const alvo = trupe.buscarAranha(4); 

const hunters = [
  new Intensificador("Gon"),
  new Transmutador("Killua"),
  new Materializador("Kurapika")
];

console.log("\nIniciando o ataque contra a Aranha encontrada:");
hunters.forEach(hunter => hunter.atacar(alvo));
