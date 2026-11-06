import java.util.ArrayList;

public class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        //Agregacao
        this.nome = nome;

        //Composicao
        this.panela = new Panela(materialDaPanela);
        this.ingredientes = new ArrayList<Monstro>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println(nome + " " + panela.getMaterial() + " ");
        ingredientes.forEach((n) -> System.out.println(n.getNome() + " " + n.receita()));
    }
}
