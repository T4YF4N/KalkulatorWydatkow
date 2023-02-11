package kalkulatorwydatkow.businesslogic;

import kalkulatorwydatkow.model.*;
import kalkulatorwydatkow.model.Kwota;
import kalkulatorwydatkow.service.DokumentService;
import kalkulatorwydatkow.service.WydatekService;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class Wydatki {
    public static void usunWydatek(int id) {
        WydatekService.usun(id);
    }

    public static Object sumujZwykle() {
        BigDecimal suma = BigDecimal.ZERO;
        for (Wydatek wydatek : WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekZwykly).collect(Collectors.toList())) {
            suma = suma.add(wydatek.getWartosc());
        }
        return suma;
    }

    public static BigDecimal sumujStale() {
        BigDecimal suma = BigDecimal.ZERO;
        for (Wydatek wydatek : WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekStaly).collect(Collectors.toList())) {
            suma = suma.add(wydatek.getWartosc());
        }
        return suma;
    }

    public static List<String> pobierzWydatkiZwykle() {
        return WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekZwykly)
                .map(w -> "[" + w.getId() + "] " + w.getNaCo() + " (" + w.getWartosc() + ")")
                .collect(Collectors.toList());
    }

    public static List<String> pobierzStale() {
        return WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekStaly)
                .map(w -> "[" + w.getId() + "] " + w.getNaCo() + " (" + w.getWartosc() + ")")
                .collect(Collectors.toList());
    }

    public static List<String> pobierzWszystkie() {
        return WydatekService.pobierzWszystkie().stream()
                .map(w -> "[" + w.getId() + "] " + w.getNaCo() + " (" + w.getWartosc() + ")")
                .collect(Collectors.toList());
    }

    public static List<Wydatek> pobierzStaleObj() {
        return WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekStaly)
                .collect(Collectors.toList());
    }

    public static List<Wydatek> pobierzWydatkiZwykleObj() {
        return WydatekService.pobierzWszystkie().stream()
                .filter(w -> w instanceof WydatekZwykly)
                .collect(Collectors.toList());
    }

    public static void dodaj(Wydatek wydatek) {
        WydatekService.dodaj(wydatek);
    }

    public List<Wydatek> pobierzWszystkieWydatki() {
        return WydatekService.pobierzWszystkie();
    }

    public BigDecimal sumujNaDzien(Date data) {
        BigDecimal suma = BigDecimal.ZERO;
        for (Wydatek wydatek : WydatekService.pobierzWszystkie().stream()
                .filter(w -> w.getData().equals(data)).collect(Collectors.toList())) {
            suma = suma.add(wydatek.getWartosc());
        }
        return suma;
    }

    public BigDecimal sumujNaMiesiac(Date data) {
        int month = data.getMonth();
        BigDecimal suma = BigDecimal.ZERO;
        for (Wydatek wydatek : WydatekService.pobierzWszystkie().stream()
                .filter(w -> w.getData().getMonth() == month).collect(Collectors.toList())) {
            suma = suma.add(wydatek.getWartosc());
        }
        return suma;
    }

    public static BigDecimal sumujWszystkie() {
        BigDecimal suma = BigDecimal.ZERO;
        for (Wydatek wydatek : WydatekService.pobierzWszystkie()) {
            suma = suma.add(wydatek.getWartosc());
        }
        return suma;
    }

    public static boolean czyWystarczyNaWydatek(Wydatek wydatek, Kwota kwota) {
        return kwota.getKwota().compareTo(wydatek.getWartosc()) >= 0;
    }

    public static boolean czyWystarczyZeWszystkichZrodel(Wydatek wydatek) {
        BigDecimal wszystkieKwoty = kalkulatorwydatkow.businesslogic.Kwota.sumujWszystkieKwoty();

        return wszystkieKwoty.compareTo(wydatek.getWartosc()) >= 0;
    }

    public static List<String> pobierzDokumentyDlaWydatku(Integer wydatekId) {
        return DokumentService.pobierzWszystkieDlaWydatku(wydatekId).stream()
                .map(d -> "[" + d.getId() + "] " + d.getNazwaPliku() + " (" + d.getFormat() + ")").collect(Collectors.toList());
    }
}
