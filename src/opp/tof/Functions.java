/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package opp.tof;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

/**
 *
 * @author binta
 */
public class Functions {
     static String folder = ".kelasC";
    static String home = System.getProperty("user.home");
    static String pathFolder = home + File.separator + folder;
    static String logFile = "Log.txt";
    static String pathLog = pathFolder + File.separator + logFile;

    // Method untuk mencatat aktivitas
    public static void logActivity(String activity) {
        try {
            File folder = new File(pathFolder);
            if (!folder.exists()) {
                folder.mkdir(); // Membuat folder jika belum ada
            }

            File fileLog = new File(pathLog);
            if (!fileLog.exists()) {
                fileLog.createNewFile(); // Membuat file log jika belum ada
            }

            // Menambahkan aktivitas ke file log
            Files.write(
                    Paths.get(pathLog),
                    (activity + System.lineSeparator()).getBytes(),
                    StandardOpenOption.APPEND);

        } catch (IOException e) {
            System.err.println("Error saat mencatat aktivitas: " + e.getMessage());
        }
    }

    // Menampilkan path log untuk debugging
    public static void printLogPath() {
        System.out.println("Path ke file log: " + pathLog);
    }

    // Method main untuk menjalankan logging langsung
    public static void main(String[] args) {
        // Contoh aktivitas yang akan dicatat dalam log
        String activity = "User logged in at " + System.currentTimeMillis();
        
        // Memanggil fungsi logActivity untuk mencatat aktivitas
        logActivity(activity);

        // Menampilkan path log
        printLogPath();

        System.out.println("Activity logged successfully.");
    }
}