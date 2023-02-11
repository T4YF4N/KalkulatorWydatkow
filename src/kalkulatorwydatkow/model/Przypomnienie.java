package kalkulatorwydatkow.model;

public class Przypomnienie {
    private Integer id;
    private String tresc;
    private String tytul;
    private Integer odnosnieWydatkuId;

    public Przypomnienie() {
    }

    public Przypomnienie(String tresc, String tytul, Integer odnosnieWydatkuId) {
        this.tresc = tresc;
        this.tytul = tytul;
        this.odnosnieWydatkuId = odnosnieWydatkuId;
    }

    public Przypomnienie(Integer id, String tresc, String tytul, Integer odnosnieWydatkuId) {
        this.id = id;
        this.tresc = tresc;
        this.tytul = tytul;
        this.odnosnieWydatkuId = odnosnieWydatkuId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTresc() {
        return tresc;
    }

    public void setTresc(String tresc) {
        this.tresc = tresc;
    }

    public String getTytul() {
        return tytul;
    }

    public void setTytul(String tytul) {
        this.tytul = tytul;
    }

    public Integer getOdnosnieWydatkuId() {
        return odnosnieWydatkuId;
    }

    public void setOdnosnieWydatkuId(Integer odnosnieWydatkuId) {
        this.odnosnieWydatkuId = odnosnieWydatkuId;
    }

    @Override
    public String toString() {
        return "[" + id + "] " + tytul;
    }
}
