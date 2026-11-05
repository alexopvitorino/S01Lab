import java.util.ArrayList;

abstract class Monstro {
    private String nome;

    public Monstro(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public abstract String receita();
}

class Slime extends Monstro {
    public Slime(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Desidratado e servido como macarrão.";
    }
}

class Mandragora extends Monstro {
    public Mandragora(String nome) {
        super(nome);
    }

    @Override
    public String receita() {
        return "Fatiada e cozida em sopa para tirar o veneno.";
    }
}

class Panela {
    private String material;

    public Panela(String material) {
        this.material = material;
    }

    public String getMaterial() {
        return material;
    }
}

class Cozinheiro {
    private String nome;
    private Panela panela;
    private ArrayList<Monstro> ingredientes;

    public Cozinheiro(String nome, String materialDaPanela) {
        this.nome = nome;
        this.panela = new Panela(materialDaPanela); 
        this.ingredientes = new ArrayList<>();
    }

    public void adicionarIngrediente(Monstro monstro) {
        ingredientes.add(monstro);
    }

    public void servirBanquete() {
        System.out.println("\nBanquete de " + nome + " na panela de " + panela.getMaterial() + ":");
        for (Monstro m : ingredientes) {
            System.out.println("- " + m.getNome() + ": " + m.receita());
        }
    }
}

public class Main {
    public static void main(String[] args) {
        Slime slimeVermelho = new Slime("Slime Vermelho");
        Mandragora mandragoraGritante = new Mandragora("Mandrágora Gritante");
        Cozinheiro senshi = new Cozinheiro("Senshi", "Ferro Fundido");
        
        senshi.adicionarIngrediente(slimeVermelho);
        senshi.adicionarIngrediente(mandragoraGritante);

        senshi.servirBanquete();
    }
}
