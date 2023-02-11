package kalkulatorwydatkow.service;

import kalkulatorwydatkow.model.Wydatek;
import kalkulatorwydatkow.model.WydatekStaly;
import kalkulatorwydatkow.model.WydatekZwykly;
import kalkulatorwydatkow.tools.DbConnector;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class WydatekService {
    public static List<Wydatek> pobierzWszystkie() {
        List<Wydatek> wydatki = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, pobrano_z_kwoty_id, wartosc, na_co, komentarz, data, czy_staly from wydatek order by id desc");

            while (rs.next()) {
                int id = rs.getInt("id");
                int pobranoZKwotyId = rs.getInt("pobrano_z_kwoty_id");
                String wartosc = rs.getString("wartosc");
                String naCo = rs.getString("na_co");
                String komentarz = rs.getString("komentarz");
                Date data = rs.getDate("data");
                boolean czyStaly = rs.getBoolean("czy_staly");

                Wydatek wydatek;
                if (!czyStaly) {
                    wydatek = new WydatekZwykly(id, pobranoZKwotyId, new BigDecimal(wartosc),
                            naCo, komentarz, new ArrayList<>(), new ArrayList<>(), data);
                } else {
                    wydatek = new WydatekStaly(id, pobranoZKwotyId, new BigDecimal(wartosc),
                            naCo, komentarz, new ArrayList<>(), new ArrayList<>(), data);
                }


                wydatki.add(wydatek);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wydatki;
    }

    public static Wydatek pobierz(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, pobrano_z_kwoty_id, wartosc, na_co, komentarz, data, czy_staly from Wydatek where id = " + id);

            if (rs.next()) {
                int pobranoZKwotyId = rs.getInt("pobrano_z_kwoty_id");
                String wartosc = rs.getString("wartosc");
                String naCo = rs.getString("na_co");
                String komentarz = rs.getString("komentarz");
                Date data = rs.getDate("data");
                boolean czyStaly = rs.getBoolean("czy_staly");

                Wydatek wydatek;
                if (!czyStaly) {
                    wydatek = new WydatekZwykly(id, pobranoZKwotyId, new BigDecimal(wartosc),
                            naCo, komentarz, new ArrayList<>(), new ArrayList<>(), data);
                } else {
                    wydatek = new WydatekStaly(id, pobranoZKwotyId, new BigDecimal(wartosc),
                            naCo, komentarz, new ArrayList<>(), new ArrayList<>(), data);
                }

                return wydatek;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void dodaj(Wydatek wydatek) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "insert into Wydatek (pobrano_z_kwoty_id, wartosc, na_co, komentarz, data, czy_staly) values (?, ?, ?, ?, ?, ?)");
            smt.setInt(1, wydatek.getPobranoZKwotyId());
            smt.setString(2, wydatek.getWartosc().toString());
            smt.setString(3, wydatek.getNaCo());
            smt.setString(4, wydatek.getKomentarz());
            smt.setDate(5, wydatek.getData());
            smt.setBoolean(6, (wydatek instanceof WydatekStaly));

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void edytuj(Integer id, Wydatek wydatek) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "update wydatek set pobrano_z_kwoty_id = ?, wartosc = ?, na_co = ?, komentarz = ?, data = ?," +
                            "czy_staly = ? where id = ?");
            smt.setInt(1, wydatek.getPobranoZKwotyId());
            smt.setString(2, wydatek.getWartosc().toString());
            smt.setString(3, wydatek.getNaCo());
            smt.setString(4, wydatek.getKomentarz());
            smt.setDate(5, wydatek.getData());
            smt.setBoolean(6, (wydatek instanceof WydatekStaly));
            smt.setInt(7, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void usun(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "delete from wydatek where id = ?");
            smt.setInt(1, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
