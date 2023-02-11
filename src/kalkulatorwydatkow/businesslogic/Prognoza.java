package kalkulatorwydatkow.businesslogic;

import kalkulatorwydatkow.model.Wydatek;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Calendar;

public class Prognoza {
    public static kalkulatorwydatkow.model.Prognoza przeliczPrognoze() {
        BigDecimal sumaWydatkowStalych = Wydatki.sumujStale();

        Calendar cal1 = Calendar.getInstance();

        int yearOneYearBefore = cal1.get(Calendar.YEAR) - 1;
        cal1.add(Calendar.MONTH, -1);
        int monthOneMonthBefore = cal1.get(Calendar.MONTH);
        int yearOneMonthBefore = cal1.get(Calendar.YEAR);

        final BigDecimal[] wydatkiWOstatnimMiesiacuArr = {BigDecimal.ZERO};
        Wydatki.pobierzWydatkiZwykleObj().stream().filter(w -> {
            Calendar cal2 = Calendar.getInstance();
            cal2.setTime(w.getData());
            int month = cal2.get(Calendar.MONTH);
            int year = cal2.get(Calendar.YEAR);

            return month == monthOneMonthBefore && year == yearOneMonthBefore;
        }).map(Wydatek::getWartosc).forEach(d ->
                wydatkiWOstatnimMiesiacuArr[0] = wydatkiWOstatnimMiesiacuArr[0].add(d));

        BigDecimal wydatkiZwykleWOstatnimMiesiacu = wydatkiWOstatnimMiesiacuArr[0];

        final BigDecimal[] wydatkiWOstatnimRokuArr = {BigDecimal.ZERO};
        Wydatki.pobierzWydatkiZwykleObj().stream().filter(w -> {
            Calendar cal2 = Calendar.getInstance();
            cal2.setTime(w.getData());
            int year = cal2.get(Calendar.YEAR);

            return year == yearOneYearBefore;
        }).map(Wydatek::getWartosc).forEach(d ->
                wydatkiWOstatnimRokuArr[0] = wydatkiWOstatnimRokuArr[0].add(d));

        BigDecimal wydatkiZwykleWOstatnimRoku = wydatkiWOstatnimRokuArr[0];

        Calendar cal3 = Calendar.getInstance();
        cal3.add(Calendar.YEAR, -1);
        int monthThisMonthYearAgo = cal3.get(Calendar.MONTH);
        int yearThisMonthYearAgo = cal3.get(Calendar.YEAR);


        final BigDecimal[] wydatkiWTymMiesiacuRokTemuArr = {BigDecimal.ZERO};
        Wydatki.pobierzWydatkiZwykleObj().stream().filter(w -> {
            Calendar cal2 = Calendar.getInstance();
            cal2.setTime(w.getData());
            int month = cal2.get(Calendar.MONTH);
            int year = cal2.get(Calendar.YEAR);

            return month == monthThisMonthYearAgo && year == yearThisMonthYearAgo;
        }).map(Wydatek::getWartosc).forEach(d ->
                wydatkiWTymMiesiacuRokTemuArr[0] = wydatkiWTymMiesiacuRokTemuArr[0].add(d));

        BigDecimal wydatkiZwykleWTymMiesiacuRokTemu = wydatkiWTymMiesiacuRokTemuArr[0];

        BigDecimal divide = wydatkiZwykleWOstatnimRoku.divide(BigDecimal.valueOf(12), RoundingMode.HALF_EVEN);
        BigDecimal prognozowanaWartoscWydatkowWTymMiesiacu = wydatkiZwykleWTymMiesiacuRokTemu.add(divide)
                .divide(BigDecimal.valueOf(2), RoundingMode.HALF_EVEN).add(sumaWydatkowStalych);

        BigDecimal prognozowanaWartoscWydatkowWTymRoku = wydatkiZwykleWOstatnimRoku.add(sumaWydatkowStalych.multiply(BigDecimal.valueOf(12)));

        return new kalkulatorwydatkow.model.Prognoza(sumaWydatkowStalych, wydatkiZwykleWOstatnimMiesiacu,
                wydatkiZwykleWOstatnimRoku, wydatkiZwykleWTymMiesiacuRokTemu,
                prognozowanaWartoscWydatkowWTymMiesiacu,
                prognozowanaWartoscWydatkowWTymRoku);
    }
}
