package Koneksi;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class koneksi {
    public static Connection konek() {
        Connection c = null;
        try {
            MysqlDataSource dataSource = new MysqlDataSource();
            dataSource.setUser("root");
            dataSource.setPassword("");
            dataSource.setServerName("localhost");
            dataSource.setDatabaseName("phonetof");
            dataSource.setPortNumber(3306);
            dataSource.setAllowMultiQueries(true);
            dataSource.setServerTimezone("Asia/Jakarta");
            c = dataSource.getConnection();
            System.out.println("Koneksi berhasil!");
        } catch (SQLException e) {
            System.err.println("Koneksi gagal: " + e.getMessage());
            e.printStackTrace();
        }
        return c;
    }
  
    public static void tutupKoneksi(Connection c) {
        if (c != null) {
            try {
                c.close();
                System.out.println("Koneksi ditutup.");
            } catch (SQLException e) {
                System.err.println("Gagal menutup koneksi: " + e.getMessage());
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        Connection conn = konek();
        if (conn != null) {
            tutupKoneksi(conn);
        }
    }

    public static PreparedStatement prepareStatement(String sql) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
