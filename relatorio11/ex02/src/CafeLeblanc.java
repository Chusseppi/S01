import java.util.ArrayList;

public class CafeLeblanc {
    private ArrayList<ItemDoCardapio> cardapio = new ArrayList<>();

    public void adicionar(ItemDoCardapio item){
        cardapio.add(item);
    }

    public void mostrarCardapio() {
        cardapio.forEach((n) -> System.out.println(n.getNome() + " "+ n.precoFinal()));
    }
}
