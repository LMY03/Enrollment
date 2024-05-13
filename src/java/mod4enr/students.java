// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

package mod4enr;
import java.sql.*;

public class students {
    
    public int studentid;
    public String completename;
    public String degreeid;
    
    public students () {
        studentid = 0;
        completename = "";
        degreeid = "";
    };
    public int modRecord()
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("UPDATE students SET completename=?, degreeid=? WHERE studentid=?" );
            sqlstatement.setInt(3, studentid);
            sqlstatement.setString(1, completename);
            sqlstatement.setString(2, degreeid);
            sqlstatement.executeUpdate();
            sqlstatement.close();
            conn.close();
            return 1;
        }    
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
            return 0;
        }
    };
    public int delRecord()  {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("DELETE FROM students WHERE studentid=?");
            sqlstatement.setInt(1, studentid);
            sqlstatement.executeUpdate();
            sqlstatement.close();
            conn.close();
            return 1;
        }    
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
            return 0;
        }
    } ;
    public int addRecord()  
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("INSERT INTO students(studentid,completename,degreeid) VALUES (?,?,?)");
            sqlstatement.setInt(1, studentid);
            sqlstatement.setString(2, completename);
            sqlstatement.setString(3, degreeid);
            sqlstatement.executeUpdate();
            sqlstatement.close();
            conn.close();
            return 1;
        }    
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    public int viewRecord() 
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("SELECT completename, degreeid FROM students WHERE studentid=?");
            sqlstatement.setInt(1, studentid);
            ResultSet rs = sqlstatement.executeQuery();
            while (rs.next()) {
                completename = rs.getString("completename");
                degreeid = rs.getString("degreeid");
            }
            sqlstatement.close();
            conn.close();
            return 1;
        }    
        catch (SQLException e) 
        {
            System.out.println(e.getMessage());
            return 0;
        }
    };
    
    public static void main(String args[]) {
       students stud = new students();
       stud.studentid = 31345;
       stud.completename = "Juan Juan";
       stud.degreeid = "BSCS";
       stud.addRecord();
       
       //stud.studentid = 10100001;
       //stud.completename = "Brianna Juan";
       //stud.degreeid = "BSIT";
       //stud.modRecord();
       
       //stud.studentid = 6969;
       //stud.delRecord();
       
//       stud.studentid = 10100003;
//       stud.viewRecord();
//       System.out.println(stud.completename + "-" +  stud.studentid);
       
    }
}
