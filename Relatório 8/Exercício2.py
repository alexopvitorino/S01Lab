class HeroiOverwatch:
    def __init__(self, codinome, funcao):
        self.codinome = codinome
        self.funcao = funcao

    def usar_suprema(self):
        print(f"{self.codinome} usou uma suprema genérica!")

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} (Tanque) ativou sua barreira protetora suprema!")

class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print(f"{self.codinome} (Suporte) ativou um bônus de dano para a equipe!")

    def curar_equipe(self):
        print(f"{self.codinome} está curando todos os aliados próximos!")

herois = [
    HeroiTanque("Reinhardt", "Tanque"),
    HeroiSuporte("Mercy", "Suporte")
]

for heroi in herois:
    heroi.usar_suprema()
    if isinstance(heroi, HeroiSuporte):
        heroi.curar_equipe()
