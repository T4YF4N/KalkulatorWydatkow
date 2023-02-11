package kalkulatorwydatkow.service;

import kalkulatorwydatkow.model.Kwota;
import kalkulatorwydatkow.tools.DbConnector;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class KwotaService {
    public static List<Kwota> pobierzWszystkie() {
        List<Kwota> kwoty = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, czy_gotowka, kwota, nazwa from kwota order by id desc ");

            while (rs.next()) {
                int id = rs.getInt("id");
                boolean czyGotowka = rs.getBoolean("czy_gotowka");
                String kwota = rs.getString("kwota");
                String nazwa = rs.getString("nazwa");

                Kwota kwotaObj = new Kwota(id, czyGotowka, new BigDecimal(kwota), nazwa);
                kwoty.add(kwotaObj);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return kwoty;
    }

    public static Kwota pobierz(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, czy_gotowka, kwota, nazwa from kwota where id = " + id);

            if (rs.next()) {
                boolean czyGotowka = rs.getBoolean("czy_gotowka");
                String kwota = rs.getString("kwota");
                String nazwa = rs.getString("nazwa");

                return new Kwota(id, czyGotowka, new BigDecimal(kwota), nazwa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void dodaj(Kwota kwota) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "insert into kwota (czy_gotowka, kwota, nazwa) values (?, ?, ?)");
            smt.setBoolean(1, kwota.getCzyGotowka());
            smt.setString(2, kwota.getKwota().toString());
            smt.setString(3, kwota.getNazwa());

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void eduytuj(Integer id, Kwota kwota) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "update kwota set czy_gotowka = ?, kwota = ?, nazwa = ? where id = ?");
            smt.setBoolean(1, kwota.getCzyGotowka());
            smt.setString(2, kwota.getKwota().toString());
            smt.setString(3, kwota.getNazwa());
            smt.setInt(4, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void usun(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "delete from kwota where id = ?");
            smt.setInt(1, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
