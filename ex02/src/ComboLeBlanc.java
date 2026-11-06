public class ComboLeBlanc extends ItemDoCardapio {
    public ComboLeBlanc(String nome, double preco) {
        super(nome, preco);
    }

    @Override
    public double precoFinal() {
        return (getPreco() * 0.9);
    }
}
