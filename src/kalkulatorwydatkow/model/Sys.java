package kalkulatorwydatkow.model;

import javax.swing.*;
import java.util.ArrayList;
import java.util.List;

public class Sys {
    public static Uzytkownik zalogowany = null;

    public static final List<Uzytkownik> uzytkownicy = new ArrayList<>();
    public static final List<Kwota> kwoty = new ArrayList<>();
    public static final List<Wydatek> wydatki = new ArrayList<>();
    public static final List<Prognoza> prognozy = new ArrayList<>();
    public static final List<Przypomnienie> przypomienia = new ArrayList<>();

    public static void warning(String tytul, String tresc) {
        JOptionPane.showMessageDialog(new JFrame(), tresc, tytul, JOptionPane.WARNING_MESSAGE);
    }

    public static void info(String tytul, String tresc) {
        JOptionPane.showMessageDialog(new JFrame(), tresc, tytul, JOptionPane.INFORMATION_MESSAGE);
    }
}
