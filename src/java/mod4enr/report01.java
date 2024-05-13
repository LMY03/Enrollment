// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
package mod4enr;
import java.sql.*;
import java.util.*;

/**
 * Report Generation Code for Report01
 * @author ccslearner
 */
public class report01 {
    
    public int repterm;
    public int repyear;
    public ArrayList<String> repcourse = new ArrayList<> ();
    public ArrayList<Integer> repstudents = new ArrayList<> ();
    
    public report01 () {
        repterm = 0;
        repyear = 0;
        repcourse.clear();
        repstudents.clear();
    }
    
    public int  generate() {
        try {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement   sqlstatement = conn.prepareStatement("SELECT    e.courseid AS course,    " +
                                                                     "COUNT(e.studentid) AS student      " +
                                                                     "FROM      enrollment e             " +
                                                                     "WHERE     e.term = ?               " +
                                                                     "AND       e.schoolyear  = ?        " +
                                                                     "GROUP BY  e.courseid               " );  

            sqlstatement.setInt(1, repterm);
            sqlstatement.setInt(2, repyear);
            ResultSet rs = sqlstatement.executeQuery();
            repcourse.clear();
            repstudents.clear();
            while (rs.next()) {
                repcourse.add(rs.getString("course"));
                repstudents.add(rs.getInt("student"));
            }
            sqlstatement.close();
            conn.close();
            return 1;    
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }
    }
    
    public static void main(String[] args) {
        report01 rpt = new report01();
        rpt.repterm = 2;
        rpt.repyear = 20192020;
        rpt.generate();
        
        for (int i = 0; i < rpt.repcourse.size(); i++) {
            System.out.println(rpt.repcourse.get(i) + "--" + rpt.repstudents.get(i));
        }
    }
}