// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

package mod4enr;
import java.sql.*;

public class degree {
    
    public String degreeid;
    public String degreename;
    
    public degree () {
        degreeid = "";
        degreename = "";
    };
    
    public int modRecord()
    {
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("UPDATE degree SET degreename=? WHERE degreeid=?" );
            sqlstatement.setString(2, degreeid);
            sqlstatement.setString(1, degreename);
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
            PreparedStatement sqlstatement = conn.prepareStatement("DELETE FROM degree WHERE degreeid=?");
            sqlstatement.setString(1, degreeid);
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
            PreparedStatement sqlstatement = conn.prepareStatement("INSERT INTO degree(degreeid,degreename) VALUES (?,?)");
            sqlstatement.setString(1, degreeid);
            sqlstatement.setString(2, degreename);

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
            PreparedStatement sqlstatement = conn.prepareStatement("SELECT degreename FROM degree WHERE degreeid=?");
            sqlstatement.setString(1, degreeid);
            ResultSet rs = sqlstatement.executeQuery();
            while (rs.next()) {
            degreename = rs.getString("degreename");
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
       degree deg = new degree();
//       deg.degreeid = "BSBB";
//       deg.degreename = "Bachelor of Brotha Brotha";
//       deg.addRecord();
       
//        deg.degreeid = "BSBB";
//        deg.degreename = "Bachelor of brotho brotho";
//        deg.modRecord();
       
//      deg.degreeid = "BSBB";
//      deg.delRecord();
       
     deg.degreeid = "BSCS";
     deg.viewRecord();
     System.out.println(deg.degreename + "-" +  deg.degreeid);   
    }
}
