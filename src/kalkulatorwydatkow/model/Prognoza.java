package kalkulatorwydatkow.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Prognoza {
    private final BigDecimal sumaWydatkowStalych;
    private final BigDecimal wydatkiZwykleWOstatnimMiesiacu;
    private final BigDecimal wydatkiZwykleWOstatnimRoku;
    private final BigDecimal wydatkiZwykleWTymMiesiacuRokTemu;
    private final BigDecimal prognozowanaWartoscWydatkowWTymMiesiacu;
    private final BigDecimal prognozowanaWartoscWydatkowWTymRoku;

    public Prognoza(BigDecimal sumaWydatkowStalych,
                    BigDecimal wydatkiZwykleWOstatnimMiesiacu,
                    BigDecimal wydatkiZwykleWOstatnimRoku,
                    BigDecimal wydatkiZwykleWTymMiesiacuRokTemu,
                    BigDecimal prognozowanaWartoscWydatkowWTymMiesiacu,
                    BigDecimal prognozowanaWartoscWydatkowWTymRoku) {
        this.sumaWydatkowStalych = sumaWydatkowStalych;
        this.wydatkiZwykleWOstatnimMiesiacu = wydatkiZwykleWOstatnimMiesiacu;
        this.wydatkiZwykleWOstatnimRoku = wydatkiZwykleWOstatnimRoku;
        this.wydatkiZwykleWTymMiesiacuRokTemu = wydatkiZwykleWTymMiesiacuRokTemu;
        this.prognozowanaWartoscWydatkowWTymMiesiacu = prognozowanaWartoscWydatkowWTymMiesiacu;
        this.prognozowanaWartoscWydatkowWTymRoku = prognozowanaWartoscWydatkowWTymRoku;
    }

    public BigDecimal getSumaWydatkowStalych() {
        return sumaWydatkowStalych;
    }

    public BigDecimal getWydatkiZwykleWOstatnimMiesiacu() {
        return wydatkiZwykleWOstatnimMiesiacu;
    }

    public BigDecimal getWydatkiZwykleWOstatnimRoku() {
        return wydatkiZwykleWOstatnimRoku;
    }

    public BigDecimal getWydatkiZwykleWTymMiesiacuRokTemu() {
        return wydatkiZwykleWTymMiesiacuRokTemu;
    }

    public BigDecimal getPrognozowanaWartoscWydatkowWTymMiesiacu() {
        return prognozowanaWartoscWydatkowWTymMiesiacu;
    }

    public BigDecimal getPrognozowanaWartoscWydatkowWTymRoku() {
        return prognozowanaWartoscWydatkowWTymRoku;
    }
}
