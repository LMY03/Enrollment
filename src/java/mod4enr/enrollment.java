// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

package mod4enr;
import java.sql.*;

public class enrollment {
    
    public int studentid;
    public String courseid;
    public int term;
    public int schoolyear;
    
    public enrollment (){
        studentid = 0;
        courseid = "";
        term = 0;
        schoolyear = 0;
    };
    public int modRecord()  {
       try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("UPDATE enrollment SET courseid=?, term=?, schoolyear=? WHERE studentid=?" );
            sqlstatement.setInt(4, studentid);
            sqlstatement.setString(1, courseid);
            sqlstatement.setInt(2, term);
            sqlstatement.setInt(3, schoolyear);
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
            PreparedStatement sqlstatement = conn.prepareStatement( "DELETE                     " +
                                                                    "FROM enrollment            " +
                                                                    "WHERE studentid=?   " +
                                                                    "AND courseid = ?;          ");
            sqlstatement.setInt(1, studentid);
            sqlstatement.setString(2, courseid);
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
    public int addRecord()  {
            try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("INSERT INTO enrollment(studentid, courseid , term , schoolyear) VALUES (?,?,?,?)");
            sqlstatement.setInt(1, studentid);
            sqlstatement.setString(2, courseid);
            sqlstatement.setInt(3, term);
            sqlstatement.setInt(4, schoolyear);
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

 public int viewRecord() {
       try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement("SELECT courseid, term, schoolyear FROM enrollment WHERE studentid=?");
            sqlstatement.setInt(1, studentid);
            ResultSet rs = sqlstatement.executeQuery();
            while (rs.next()) {
            courseid = rs.getString("courseid");
            term = rs.getInt("term");
            schoolyear = rs.getInt("schoolyear");
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
         enrollment enr = new enrollment();
//         enr.studentid = 10100001;
//         enr.courseid = "CCPROG3";
//         enr.term = 1;
//         enr.schoolyear = 20202021;
//         enr.addRecord();
       
//         enr.studentid = 10100001;
//         enr.courseid = "CCPROG2";
//         enr.term = 2;
//         enr.schoolyear = 20212022;
//         enr.modRecord();
       
//         enr.studentid = 10100001;
//         enr.delRecord();
       
       enr.studentid = 10100002;
       enr.viewRecord();
      System.out.println(enr.term + "-" + enr.schoolyear + "-" + enr.studentid);   
    }
}
