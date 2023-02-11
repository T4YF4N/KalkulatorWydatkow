package kalkulatorwydatkow.service;

import kalkulatorwydatkow.model.Przypomnienie;
import kalkulatorwydatkow.tools.DbConnector;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PrzypomnienieService {
    public static List<Przypomnienie> pobierzWszystkie() {
        List<Przypomnienie> przypomnienia = new ArrayList<>();

        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, odnosnie_wydatku_id, tresc, tytul from przypomnienie order by id desc");

            while (rs.next()) {
                int id = rs.getInt("id");
                int odnosnieWydatkuId = rs.getInt("odnosnie_wydatku_id");
                String tresc = rs.getString("tresc");
                String tytul = rs.getString("tytul");

                Przypomnienie przypomnienie = new Przypomnienie(id, tresc, tytul, odnosnieWydatkuId);
                przypomnienia.add(przypomnienie);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return przypomnienia;
    }

    public static Przypomnienie pobierz(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            Statement smt = conn.createStatement();
            ResultSet rs = smt.executeQuery("select id, odnosnie_wydatku_id, tresc, tytul from przypomnienie where id = " + id);

            if (rs.next()) {
                int odnosnieWydatkuId = rs.getInt("odnosnie_wydatku_id");
                String tresc = rs.getString("tresc");
                String tytul = rs.getString("tytul");

                return new Przypomnienie(id, tresc, tytul, odnosnieWydatkuId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public static void dodaj(Przypomnienie przypomnienie) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "insert into przypomnienie (odnosnie_wydatku_id, tresc, tytul) values (?, ?, ?)");
            smt.setInt(1, przypomnienie.getOdnosnieWydatkuId());
            smt.setString(2, przypomnienie.getTresc());
            smt.setString(3, przypomnienie.getTytul());

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void edytuj(Integer id, Przypomnienie przypomnienie) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "update przypomnienie set tresc = ?, tytul = ?, odnosnie_wydatku_id = ? where id = ?");
            smt.setString(1, przypomnienie.getTresc());
            smt.setString(2, przypomnienie.getTytul());
            smt.setInt(3, przypomnienie.getOdnosnieWydatkuId());
            smt.setInt(4, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void usun(Integer id) {
        try (Connection conn = DbConnector.getConnection()) {
            PreparedStatement smt = conn.prepareStatement(
                    "delete from przypomnienie where id = ?");
            smt.setInt(1, id);

            smt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
