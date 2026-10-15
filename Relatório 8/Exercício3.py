class Persona:
    def __init__(self, nome, arcano):
        self.nome = nome
        self.arcano = arcano

    def invocar(self):
        print(f"Persona Invocada: {self.nome} ({self.arcano})")

class Aliado:
    def __init__(self, nome, codinome):
        self.nome = nome
        self.codinome = codinome

class Lider:
    def __init__(self, codinome):
        self.codinome = codinome
        self.persona = Persona("Arsène", "Louco")
        self._equipe = []

    def recrutar(self, aliado):
        self._equipe.append(aliado)

    def infiltrar(self, palacio):
        print(f"\nInfiltrando o Palácio de {palacio}...")
        self.persona.invocar()
        print("Equipe atual:")
        for membro in self._equipe:
            print(f"- {membro.codinome}")

ryuji = Aliado("Ryuji Sakamoto", "Skull")
ann = Aliado("Ann Takamaki", "Panther")

joker = Lider("Joker")
joker.recrutar(ryuji)
joker.recrutar(ann)

joker.infiltrar("Kamoshida")
