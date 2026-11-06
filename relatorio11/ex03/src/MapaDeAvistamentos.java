import java.util.HashMap;

public class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos = new HashMap<>();

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }
    public void investigar(String local){
        if (avistamentos.get(local) == null){
            System.out.println("Local esta tranquilo");
        } else {
            avistamentos.get(local).manifestar();
        }
    }
}
