package kalkulatorwydatkow.businesslogic;

import kalkulatorwydatkow.service.KwotaService;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Kwota {
    public static BigDecimal sumujWszystkieKwoty() {
        BigDecimal suma = BigDecimal.ZERO;
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie()) {
            suma = suma.add(kwota.getKwota());
        }
        return suma;
    }

    public static BigDecimal sumujGotowke() {
        BigDecimal suma = BigDecimal.ZERO;
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie().stream()
                .filter(kalkulatorwydatkow.model.Kwota::getCzyGotowka).collect(Collectors.toList())) {
            suma = suma.add(kwota.getKwota());
        }
        return suma;
    }

    public static BigDecimal sumujPieniadzeNaKontach() {
        BigDecimal suma = BigDecimal.ZERO;
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie().stream()
                .filter(k -> !k.getCzyGotowka()).collect(Collectors.toList())) {
            suma = suma.add(kwota.getKwota());
        }
        return suma;
    }

    public static List<String> pobierzKwotyGotowka() {
        List<String> kwoty = new ArrayList<>();
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie().stream()
                .filter(kalkulatorwydatkow.model.Kwota::getCzyGotowka).collect(Collectors.toList())) {
            kwoty.add("[" + kwota.getId() + "] " + kwota.getNazwa() + " (" + kwota.getKwota() + ")");
        }
        return kwoty;
    }

    public static List<String> pobierzKwotyKonta() {
        List<String> kwoty = new ArrayList<>();
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie().stream()
                .filter(k -> !k.getCzyGotowka()).collect(Collectors.toList())) {
            kwoty.add("[" + kwota.getId() + "] " + kwota.getNazwa() + " (" + kwota.getKwota() + ")");
        }
        return kwoty;
    }

    public static List<String> pobierzKwotyWszystkie() {
        List<String> kwoty = new ArrayList<>();
        for (kalkulatorwydatkow.model.Kwota kwota : KwotaService.pobierzWszystkie()) {
            kwoty.add("[" + kwota.getId() + "] " + kwota.getNazwa() + " (" + kwota.getKwota() + ")");
        }
        return kwoty;
    }

    public static void usunKwote(Integer id) {
        KwotaService.usun(id);
    }

    public static void dodaj(kalkulatorwydatkow.model.Kwota kwota) {
        KwotaService.dodaj(kwota);
    }
}
