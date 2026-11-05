import java.util.HashMap;

interface Sobrenatural {
    void manifestar();
}

class Alienigena implements Sobrenatural {
    private String nome;

    public Alienigena(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println("Alienígena " + nome + " abduzindo vacas!");
    }
}

class EspiritoYoukai implements Sobrenatural {
    private String nome;

    public EspiritoYoukai(String nome) {
        this.nome = nome;
    }

    @Override
    public void manifestar() {
        System.out.println("Espírito " + nome + " assombrando os corredores da escola!");
    }
}

class MapaDeAvistamentos {
    private HashMap<String, Sobrenatural> avistamentos;

    public MapaDeAvistamentos() {
        this.avistamentos = new HashMap<>();
    }

    public void registrar(String local, Sobrenatural ser) {
        avistamentos.put(local, ser);
    }

    public void investigar(String local) {
        System.out.println("\nInvestigando: " + local);
        Sobrenatural ser = avistamentos.get(local);
        
        if (ser == null) {
            System.out.println("O local está tranquilo.");
        } else {
            ser.manifestar();
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Alienigena serpo = new Alienigena("Serpo");
        EspiritoYoukai turbo = new EspiritoYoukai("Turbo Granny");

        MapaDeAvistamentos mapa = new MapaDeAvistamentos();
        mapa.registrar("Túnel Abandonado", turbo);
        mapa.registrar("Hospital Desativado", serpo);

        mapa.investigar("Túnel Abandonado");
        mapa.investigar("Hospital Desativado");
        mapa.investigar("Escola");
    }
}
