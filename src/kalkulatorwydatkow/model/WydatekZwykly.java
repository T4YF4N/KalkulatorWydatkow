package kalkulatorwydatkow.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

public class WydatekZwykly extends Wydatek {
    public WydatekZwykly() {
    }

    public WydatekZwykly(Integer id, int pobranoZKwoty, BigDecimal wartosc, String naCo, String komentarz, List<Dokument> dokumenty,
                         List<Przypomnienie> przypomnienienia, Date data) {
        super(id, pobranoZKwoty, wartosc, naCo, komentarz, dokumenty, przypomnienienia, data);
    }

    public WydatekZwykly(int pobranoZKwotyId, BigDecimal wartosc, String naCo, String komentarz, List<Dokument> dokumenty, List<Przypomnienie> przypomnienienia, Date data) {
        super(pobranoZKwotyId, wartosc, naCo, komentarz, dokumenty, przypomnienienia, data);
    }
}
