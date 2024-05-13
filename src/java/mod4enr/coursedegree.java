// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003


package mod4enr;
import java.sql.*;

public class coursedegree {
   public String courseid;
   public String degree;
   
   public coursedegree () {
        courseid = "";
        degree = "";
   };
   public int modRecord()
    {
         try
         {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?useTimezone=true&serverTimezone=UTC&user=root&password=12345678&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("UPDATE coursedegree SET degree=? WHERE courseid=?");
            sqlstatement.setString(2, courseid);
            sqlstatement.setString(1, degree);
            sqlstatement.executeUpdate();
            sqlstatement.close();
            conn.close();
            return 1;
        } catch (SQLException e) {
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
            PreparedStatement sqlstatement = conn.prepareStatement("DELETE FROM coursedegree WHERE courseid=?");
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
            Connection connect;
            connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?useTimezone=true&serverTimezone=UTC&user=root&password=12345678&useSSL=false");
            PreparedStatement sqlstatement = connect.prepareStatement("INSERT INTO coursedegree (courseid,degree) VALUES (?,?)");
            sqlstatement.setString (1, courseid);
            sqlstatement.setString (2, degree);
            sqlstatement.executeUpdate();   
            sqlstatement.close();
            connect.close();
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
            PreparedStatement sqlstatement = conn.prepareStatement("SELECT degree FROM coursedegree WHERE courseid=?");
            sqlstatement.setString(1, courseid);
            ResultSet rs = sqlstatement.executeQuery();
            while (rs.next()) {
            degree = rs.getString("degree");
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
       coursedegree courdeg = new coursedegree();
//       courdeg.courseid = "CCPROG2";
//       courdeg.degree = "BSIT";
//       courdeg.addRecord();
       
//        courdeg.courseid = "CCPROG2";
//        courdeg.degree = "BSCS";
//        courdeg.modRecord();
       
//      courdeg.courseid = "CCPROG2";
//      courdeg.delRecord();
       
//       courdeg.courseid = "CCPROG3";
//       courdeg.viewRecord();
//       System.out.println(courdeg.degree + "-" +  courdeg.courseid);   
    }
}