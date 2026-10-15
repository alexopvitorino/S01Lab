from abc import ABC, abstractmethod

class IUnidadeDeRede(ABC):
    @abstractmethod
    def executar_invasao(self):
        pass

class Cyberdeck:
    def __init__(self, modelo):
        self.modelo = modelo

class OperadorNetrunner(IUnidadeDeRede):
    def __init__(self, nome, modelo_cyberdeck):
        self.nome = nome
        self.cyberdeck = Cyberdeck(modelo_cyberdeck)

    def executar_invasao(self):
        print(f"Netrunner {self.nome} usando {self.cyberdeck.modelo}: Quebrando o gelo (ICE) do servidor!")

class DroneDeVigilancia(IUnidadeDeRede):
    def __init__(self, codigo):
        self.codigo = codigo

    def executar_invasao(self):
        print(f"Drone [{self.codigo}]: Interceptando o sinal da rede local!")

class CelulaHacker:
    def __init__(self, nome, membros):
        self.nome = nome
        self.membros = membros

    def iniciar_ataque(self):
        print(f"\n--- Célula {self.nome} iniciando ataque! ---")
        for membro in self.membros:
            membro.executar_invasao()

netrunner = OperadorNetrunner("Lucy", "Militech Paraline")
drone = DroneDeVigilancia("V-09")

celula = CelulaHacker("Edgerunners", [netrunner, drone])
celula.iniciar_ataque()
