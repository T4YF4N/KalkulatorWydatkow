package kalkulatorwydatkow.businesslogic;

import kalkulatorwydatkow.model.Przypomnienie;
import kalkulatorwydatkow.service.PrzypomnienieService;

import java.util.List;

public class Przypomnienia {
    public static List<Przypomnienie> pobierzWszystkie() {
        return PrzypomnienieService.pobierzWszystkie();
    }

    public static void dodaj(Przypomnienie przypomnienie) {
        PrzypomnienieService.dodaj(przypomnienie);
    }

    public static Przypomnienie pobierz(int id) {
        return PrzypomnienieService.pobierz(id);
    }
}
