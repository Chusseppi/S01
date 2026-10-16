class MortoVivo:
    def __init__(self, nome: str, almas: int, estus: int):
        self.nome = nome
        self._almas = almas
        self.__estus = estus

    def get_estus(self):
        return self.__estus

    def set_estus(self, nova_quantidade):
        if nova_quantidade < 0 or nova_quantidade > 10:
            print("Quantidade de Estus Invalida \n")
        else:
            self.__estus = nova_quantidade

    def mostrar_status(self):
        return f"Morto-vivo {self.nome} | Almas: {self._almas} | Estus: {self.__estus}"

class Clerigo(MortoVivo):
    def __init__(self, nome: str, almas: int, estus: int):
        super().__init__(nome, almas, estus)
    
    def mostrar_status(self):
        return super().mostrar_status() + f" | Classe do personagem: Clerigo \n"


def main():

    personagem = Clerigo("Marcelo Horse", 2000, 2)
    print(personagem.mostrar_status())
    personagem.set_estus(15)
    personagem.set_estus(10)
    print(personagem.mostrar_status())

    #AttributeError: 'Clerigo' object has no attribute '__estus'. Did you mean: 'get_estus'?
    print(personagem.__estus)

main()
