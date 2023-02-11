package kalkulatorwydatkow.businesslogic;

import kalkulatorwydatkow.model.Sys;
import kalkulatorwydatkow.model.Uzytkownik;
import kalkulatorwydatkow.service.UzytkownikService;

import java.util.ArrayList;
import java.util.List;

public class Autoryzacja {
    public static Uzytkownik pobierzZalogowanego() {
        return Sys.zalogowany;
    }

    public static boolean czyZalogowany() {
        return Sys.zalogowany != null;
    }

    public static boolean zaloguj(String login, String haslo) {
        boolean zalogowano = UzytkownikService.sprobujSieZalogowac(login, haslo);

        if (zalogowano) {
            Sys.zalogowany = UzytkownikService.pobierz(login);
        }

        return zalogowano;
    }

    public static void wyloguj() {
        Sys.zalogowany = null;
    }

    public static void rejestruj(String login, String haslo, String imie, String nazwisko) {
        UzytkownikService.dodaj(new Uzytkownik(login, haslo, imie, nazwisko));
    }

    public static List<String> pobierzNazwyUzytkownikow() {
        ArrayList<String> uzytkownicy = new ArrayList<>();

        for (Uzytkownik uzytkownik : UzytkownikService.pobierzWszystkich()) {
            uzytkownicy.add("[" + uzytkownik.getId() + "] " + uzytkownik.getImie() + " " + uzytkownik.getNazwisko()
                    + " (" + uzytkownik.getLogin() + ")");
        }

        return uzytkownicy;
    }

    public static void zmienHaslo(Integer id, String haslo) {
        Sys.zalogowany.setHaslo(haslo);
        UzytkownikService.edytuj(id, Sys.zalogowany);
    }

    public static void usunUzytkownika(int selectedId) {
        UzytkownikService.usun(selectedId);
    }
}
