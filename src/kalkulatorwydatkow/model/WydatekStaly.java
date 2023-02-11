package kalkulatorwydatkow.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

public class WydatekStaly extends Wydatek {
    public WydatekStaly() {
    }

    public WydatekStaly(Integer id, int pobranoZKwotyId, BigDecimal wartosc, String naCo, String komentarz, List<Dokument> dokumenty,
                        List<Przypomnienie> przypomnienienia, Date data) {
        super(id, pobranoZKwotyId, wartosc, naCo, komentarz, dokumenty, przypomnienienia, data);
    }

    public WydatekStaly(int pobranoZKwotyId, BigDecimal wartosc, String naCo, String komentarz, List<Dokument> dokumenty, List<Przypomnienie> przypomnienienia, Date data) {
        super(pobranoZKwotyId, wartosc, naCo, komentarz, dokumenty, przypomnienienia, data);
    }
}
