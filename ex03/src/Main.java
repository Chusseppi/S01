public class Main {
    public static void main(String[] args){
        Alienigena et = new Alienigena("ET de varginha");
        EspiritoYoukai loira = new EspiritoYoukai("Loira do banheiro do Inatel");
        MapaDeAvistamentos mapa = new MapaDeAvistamentos();

        mapa.registrar("Varginha", et);
        mapa.registrar("banheiro", loira);

        mapa.investigar("Varginha");
        mapa.investigar("banheiro");
        mapa.investigar("casa");

    }
}
