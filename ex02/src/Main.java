public class Main {
    public static void main(String[] args){
        ItemDoCardapio sopa = new ItemDoCardapio("sopa", 10.5);
        ItemDoCardapio suco = new ItemDoCardapio("suco", 7.5);
        ComboLeBlanc combo1 = new ComboLeBlanc("combo1", 20.5);
        CafeLeblanc cafe = new CafeLeblanc();

        cafe.adicionar(sopa);
        cafe.adicionar(suco);
        cafe.adicionar(combo1);

        cafe.mostrarCardapio();
    }
}