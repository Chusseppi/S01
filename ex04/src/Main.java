public class Main {
    public static void main(String[] args){
        Mandragora planta = new Mandragora("Cleiton");
        Slime geleca = new Slime("Geleca");
        Cozinheiro jose = new Cozinheiro("Jose", "cobre");

        jose.adicionarIngrediente(planta);
        jose.adicionarIngrediente(geleca);

        jose.servirBanquete();

    }
}
