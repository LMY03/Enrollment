// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

package mod4enr;
import java.sql.*;

public class courses {
    
    public String courseid;
    public String coursename;
    public String department;
    
    
    public courses () {
        courseid = "";
        coursename = "";
        department = "";
                
    };
    public int modRecord()
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("UPDATE courses SET coursename=?, department=? WHERE courseid=?" );
            sqlstatement.setString(3, courseid);
            sqlstatement.setString(1, coursename);
            sqlstatement.setString(2, department);
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
    public int delRecord() 
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("DELETE FROM courses WHERE courseid=?");
            sqlstatement.setString(1, courseid);
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
    
    public int addRecord()
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("INSERT INTO courses(courseid,coursename,department) VALUES (?,?,?)");
            sqlstatement.setString(1, courseid);
            sqlstatement.setString(2, coursename);
            sqlstatement.setString(3, department);
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
    public int viewRecord() 
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("SELECT coursename, department FROM courses WHERE courseid=?");
            sqlstatement.setString(1, courseid);
            ResultSet rs = sqlstatement.executeQuery();
            while (rs.next()) {
            coursename = rs.getString("coursename");
            department = rs.getString("department");
            }
            sqlstatement.executeQuery();
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
       courses cour = new courses();
//       cour.courseid = "ITISDOMP";
//       cour.coursename = "JuanCruz";
//       cour.department = "CCS";
//       cour.addRecord();
       
//       cour.courseid = "ITINSYS";
//       cour.coursename = "ITISDAMP";
//       cour.department = "CLA";
//       cour.modRecord();
       
//       cour.courseid = "ITINSYS";
//       cour.delRecord();
       
       cour.courseid = "CCICOMP";
       cour.viewRecord();
       System.out.println(cour.coursename + "-" +  cour.courseid);
    }
}
