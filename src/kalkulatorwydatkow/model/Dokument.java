package kalkulatorwydatkow.model;

public class Dokument {
    private Integer id;
    private byte[] dane;
    private String nazwaPliku;
    private String format;
    private int wydatekId;

    public Dokument() {
    }

    public Dokument(byte[] dane, String nazwaPliku, String format, int wydatekId) {
        this.dane = dane;
        this.nazwaPliku = nazwaPliku;
        this.format = format;
        this.wydatekId = wydatekId;
    }

    public Dokument(Integer id, byte[] dane, String nazwaPliku, String format, int wydatekId) {
        this.id = id;
        this.dane = dane;
        this.nazwaPliku = nazwaPliku;
        this.format = format;
        this.wydatekId = wydatekId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public byte[] getDane() {
        return dane;
    }

    public void setDane(byte[] dane) {
        this.dane = dane;
    }

    public String getNazwaPliku() {
        return nazwaPliku;
    }

    public void setNazwaPliku(String nazwaPliku) {
        this.nazwaPliku = nazwaPliku;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    public int getWydatekId() {
        return wydatekId;
    }

    public void setWydatekId(int wydatekId) {
        this.wydatekId = wydatekId;
    }
}
