import java.sql.*;

public class Createtb {
    public static void main(String[] args) {

        try {

            Connection con = ConnectionDb.getConnection();

            String q = "Create table Newsfake (id int (20)  primary key auto_increament, NInput Varchar(200) not null, Npred varchar(5), Nmodel varchar(200))";

            Statement stmt = con.createStatement();
            stmt.executeUpdate(q);

            System.out.println("table created successfully");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
