class HeroiOverwatch:
    def __init__(self, codinome: str, funcao: str):
        self.codinome = codinome
        self.funcao = funcao
    def usar_suprema(self):
        return 0

        

class HeroiTanque(HeroiOverwatch):
    def usar_suprema(self):
        print("O universo canta pra mim!!!")



class HeroiSuporte(HeroiOverwatch):
    def usar_suprema(self):
        print("Solta o som!!!")

    def curar_equipe(self):
        print("Aliados curados")


def main():

    herois = []
    herois.append(HeroiTanque("Sigma", "Tanque"))
    herois.append(HeroiSuporte("Lucio", "Suporte"))

    for i in herois:
        i.usar_suprema()
        if(isinstance(i, HeroiSuporte)):
            i.curar_equipe()
        

main()
