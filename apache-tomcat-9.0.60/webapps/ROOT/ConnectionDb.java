import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDb {
    private static Connection con;

    public static Connection getConnection() {

        try {

            if (con == null) {

                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fakenews", "root", "root");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return con;

    }

}