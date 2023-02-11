package kalkulatorwydatkow.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

public abstract class Wydatek {
    private Integer id;
    private int pobranoZKwotyId;
    private BigDecimal wartosc;
    private String naCo;
    private String komentarz;
    private List<Dokument> dokumenty;
    private List<Przypomnienie> przypomnienienia;
    private Date data;

    public Wydatek() {
    }

    public Wydatek(int pobranoZKwotyId, BigDecimal wartosc, String naCo, String komentarz, List<Dokument> dokumenty, List<Przypomnienie> przypomnienienia, Date data) {
        this.pobranoZKwotyId = pobranoZKwotyId;
        this.wartosc = wartosc;
        this.naCo = naCo;
        this.komentarz = komentarz;
        this.dokumenty = dokumenty;
        this.przypomnienienia = przypomnienienia;
        this.data = data;
    }

    public Wydatek(Integer id, int pobranoZKwoty, BigDecimal wartosc, String naCo,
                   String komentarz, List<Dokument> dokumenty, List<Przypomnienie> przypomnienienia, Date data) {
        this.id = id;
        this.pobranoZKwotyId = pobranoZKwoty;
        this.wartosc = wartosc;
        this.naCo = naCo;
        this.komentarz = komentarz;
        this.dokumenty = dokumenty;
        this.przypomnienienia = przypomnienienia;
        this.data = data;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getPobranoZKwotyId() {
        return pobranoZKwotyId;
    }

    public void setPobranoZKwotyId(int pobranoZKwotyId) {
        this.pobranoZKwotyId = pobranoZKwotyId;
    }

    public BigDecimal getWartosc() {
        return wartosc;
    }

    public void setWartosc(BigDecimal wartosc) {
        this.wartosc = wartosc;
    }

    public String getNaCo() {
        return naCo;
    }

    public void setNaCo(String naCo) {
        this.naCo = naCo;
    }

    public String getKomentarz() {
        return komentarz;
    }

    public void setKomentarz(String komentarz) {
        this.komentarz = komentarz;
    }

    public List<Dokument> getDokumenty() {
        return dokumenty;
    }

    public void setDokumenty(List<Dokument> dokumenty) {
        this.dokumenty = dokumenty;
    }

    public List<Przypomnienie> getPrzypomnienienia() {
        return przypomnienienia;
    }

    public void setPrzypomnienienia(List<Przypomnienie> przypomnienienia) {
        this.przypomnienienia = przypomnienienia;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
}
