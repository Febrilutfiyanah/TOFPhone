/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package opp.tof;

/**
 *
 * @author binta
 */
public class CurrentUser {
     // Variabel statis untuk menyimpan username dan level pengguna saat ini
    public static String username; // Username pengguna saat ini
    static String level; // Level pengguna saat ini (admin, kasir, owner)

    // Getter untuk username
    public static String getUsername() {
        return username;
    }

    // Setter untuk username
    public static void setUsername(String username) {
        CurrentUser.username = username;
    }

    // Getter untuk level
    public static String getLevel() {
        return level;
    }

    // Setter untuk level
    public static void setLevel(String level) {
        CurrentUser.level = level;
    }

    static int getId() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
