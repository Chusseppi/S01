public class DemonioDoFogo extends Morador {
    public DemonioDoFogo(String nome){
        super(nome);
    }
    @Override
    public void apresentar() {
        System.out.println(getNome() + ", ele faz o castelo andar.");
    }
}
