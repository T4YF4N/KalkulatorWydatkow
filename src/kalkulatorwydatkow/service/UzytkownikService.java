package kalkulatorwydatkow.service;

import kalkulatorwydatkow.model.Uzytkownik;
import kalkulatorwydatkow.tools.DbConnector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UzytkownikService {
    public static List<Uzytkownik> pobierzWszystkich() {
        List<Uzytkownik> uzytkownicy = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, haslo, login, imie, nazwisko from uzytkownik order by id desc");

            while (rs.next()) {
                int id = rs.getInt("id");
                String haslo = rs.getString("haslo");
                String login = rs.getString("login");
                String imie = rs.getString("imie");
                String nazwisko = rs.getString("nazwisko");

                Uzytkownik uzytkownik = new Uzytkownik(id, login, haslo, imie, nazwisko);
                uzytkownicy.add(uzytkownik);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return uzytkownicy;
    }

    public static Uzytkownik pobierz(String login) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, haslo, login, imie, nazwisko from uzytkownik where login like '" + login + "'");

            if (rs.next()) {
                Integer id = rs.getInt("id");
                String haslo = rs.getString("haslo");
                String imie = rs.getString("imie");
                String nazwisko = rs.getString("nazwisko");

                return new Uzytkownik(id, login, haslo, imie, nazwisko);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static Uzytkownik pobierz(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, haslo, login, imie, nazwisko from uzytkownik where id = " + id);

            if (rs.next()) {
                String haslo = rs.getString("haslo");
                String login = rs.getString("login");
                String imie = rs.getString("imie");
                String nazwisko = rs.getString("nazwisko");

                return new Uzytkownik(id, login, haslo, imie, nazwisko);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void dodaj(Uzytkownik uzytkownik) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "insert into uzytkownik (haslo, login, imie, nazwisko) values (?, ?, ?, ?)");
            smt.setString(1, uzytkownik.getHaslo());
            smt.setString(2, uzytkownik.getLogin());
            smt.setString(3, uzytkownik.getImie());
            smt.setString(4, uzytkownik.getNazwisko());

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void edytuj(Integer id, Uzytkownik uzytkownik) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "update uzytkownik set haslo = ?, login = ?, imie = ?, nazwisko = ? where id = ?");
            smt.setString(1, uzytkownik.getHaslo());
            smt.setString(2, uzytkownik.getLogin());
            smt.setString(3, uzytkownik.getImie());
            smt.setString(4, uzytkownik.getNazwisko());
            smt.setInt(5, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void usun(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "delete from uzytkownik where id = ?");
            smt.setInt(1, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static boolean sprobujSieZalogowac(String login, String haslo) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement("select count(*) from uzytkownik where login like ? and haslo like ?");
            smt.setString(1, login);
            smt.setString(2, haslo );

            ResultSet rs = smt.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) == 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    public static boolean czyUzytkownikIstnieje(String login) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement("select count(*) from uzytkownik where login like ?");
            smt.setString(1, login);

            ResultSet rs = smt.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) == 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
