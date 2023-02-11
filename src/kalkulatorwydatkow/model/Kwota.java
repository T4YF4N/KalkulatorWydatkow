package kalkulatorwydatkow.model;

import java.math.BigDecimal;

public class Kwota {
    private Integer id;
    private Boolean czyGotowka;
    private BigDecimal kwota;
    private String nazwa;

    public Kwota() {
    }

    public Kwota(Integer id, Boolean czyGotowka, BigDecimal kwota, String nazwa) {
        this.id = id;
        this.czyGotowka = czyGotowka;
        this.kwota = kwota;
        this.nazwa = nazwa;
    }

    public Kwota(Boolean czyGotowka, BigDecimal kwota, String nazwa) {
        this.czyGotowka = czyGotowka;
        this.kwota = kwota;
        this.nazwa = nazwa;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getCzyGotowka() {
        return czyGotowka;
    }

    public void setCzyGotowka(Boolean czyGotowka) {
        this.czyGotowka = czyGotowka;
    }

    public BigDecimal getKwota() {
        return kwota;
    }

    public void setKwota(BigDecimal kwota) {
        this.kwota = kwota;
    }

    public String getNazwa() {
        return nazwa;
    }

    public void setNazwa(String nazwa) {
        this.nazwa = nazwa;
    }
}
