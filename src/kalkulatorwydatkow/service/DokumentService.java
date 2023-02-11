package kalkulatorwydatkow.service;

import kalkulatorwydatkow.model.Dokument;
import kalkulatorwydatkow.tools.DbConnector;

import javax.sql.rowset.serial.SerialBlob;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DokumentService {
    public static List<Dokument> pobierzWszystkie() {
        List<Dokument> dokumenty = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, wydatek_id, dane, nazwa_pliku, format from dokument");

            while (rs.next()) {
                int id = rs.getInt("id");
                int wydatekId = rs.getInt("wydatek_id");
                Blob dane = rs.getBlob("dane");
                String nazwaPliku = rs.getString("nazwa_pliku");
                String format = rs.getString("format");

                byte[] daneBytes = dane.getBytes(1, (int) dane.length());
                Dokument dokument = new Dokument(id, daneBytes, nazwaPliku, format, wydatekId);
                dokumenty.add(dokument);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dokumenty;
    }

    public static List<Dokument> pobierzWszystkieDlaWydatku(Integer wydatekId) {
        List<Dokument> dokumenty = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, wydatek_id, dane, nazwa_pliku, format from dokument where wydatek_id = " + wydatekId + " order by id desc");

            while (rs.next()) {
                int id = rs.getInt("id");
                Blob dane = rs.getBlob("dane");
                String nazwaPliku = rs.getString("nazwa_pliku");
                String format = rs.getString("format");

                byte[] daneBytes = dane.getBytes(1, (int) dane.length());
                Dokument dokument = new Dokument(id, daneBytes, nazwaPliku, format, wydatekId);
                dokumenty.add(dokument);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return dokumenty;
    }

    public static Dokument pobierz(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery(
                    "select id, wydatek_id, dane, nazwa_pliku, format from dokument where id = " + id);

            if (rs.next()) {
                int wydatekId = rs.getInt("wydatek_id");
                Blob dane = rs.getBlob("dane");
                String nazwaPliku = rs.getString("nazwa_pliku");
                String format = rs.getString("format");

                byte[] daneBytes = dane.getBytes(1, (int) dane.length());
                return new Dokument(id, daneBytes, nazwaPliku, format, wydatekId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void dodaj(Dokument dokument) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "insert into dokument (wydatek_id, dane, nazwa_pliku, format) values (?, ?, ?, ?)");

            smt.setInt(1, dokument.getWydatekId());
            smt.setBlob(2, new SerialBlob(dokument.getDane()));
            smt.setString(3, dokument.getNazwaPliku());
            smt.setString(4, dokument.getFormat());

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void edytuj(Integer id, Dokument dokument) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "update dokument set wydatek_id = ?, dane = ?, nazwa_pliku = ?, format = ? where id = ?");

            smt.setInt(1, dokument.getWydatekId());
            smt.setBlob(2, new SerialBlob(dokument.getDane()));
            smt.setString(3, dokument.getNazwaPliku());
            smt.setString(4, dokument.getFormat());
            smt.setInt(5, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void usun(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "delete from dokument where id = ?");
            smt.setInt(1, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
