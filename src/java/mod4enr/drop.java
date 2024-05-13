// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003
package mod4enr;
import java.sql.*;
import java.util.*;

public class drop {
  
    public students                 Student         = new students();
    public ArrayList<enrollment>    EnrollmentList  = new ArrayList<> ();
    public ArrayList<enrollment>    DropList        = new ArrayList<> ();

    public drop() {
        Student = new students();
        EnrollmentList.clear();
        DropList.clear();
    };
    // perform all the necessary data loading from DB
    public int clearDrop () {   // clears dropping data of the student
        DropList.clear();
        return 1;
    }
    
    public int loadEnrollment ()    {   // load enrollment data of the student 
        try 
        {
            Connection conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?user=root&password=12345678&useTimezone=true&serverTimezone=UTC&useSSL=false");
            PreparedStatement sqlstatement = conn.prepareStatement( "SELECT	courseid                                                " +
                                                                    "FROM	enrollment                                              " +
                                                                    "WHERE	studentid = ?                                           " +
                                                                    "AND		schoolyear = (SELECT MAX(schoolyear)            " +
                                                                    "					  FROM enrollment)              " +
                                                                    "AND 	term = (SELECT MAX(term)                                " +
                                                                    "					  FROM enrollment               " +
                                                                    "                      WHERE schoolyear = (SELECT MAX(schoolyear)   " +
                                                                    "		FROM enrollment));                                      ");
            
            sqlstatement.setInt(1, Student.studentid);
            ResultSet rs = sqlstatement.executeQuery();
            EnrollmentList.clear();
            while (rs.next()) {
                enrollment em = new enrollment();
                em.courseid = rs.getString("courseid");
                if (DropList.isEmpty()) {
                    EnrollmentList.add(em);
                }
                for (int i = 0; i < DropList.size(); i++) {
                    if (!DropList.get(i).courseid.equals(em.courseid)) {
                        EnrollmentList.add(em);
                        break;
                    }
                }
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
    }
    
    public int confirmDrop() {   // saves dropping data into the Database
        for (int i = 0; i < DropList.size(); i++) {
            DropList.get(i).delRecord();
        }
        return 1;
    }
    
    public int addtodrop(String course_id) {
        enrollment drop = new enrollment();
        drop.studentid = Student.studentid;
        drop.courseid = course_id;
        DropList.add(drop);
        return 1;
    }
    
    public void run(drop d) {
        d.Student.studentid = 10100001;
        d.loadEnrollment();
        
        for (int i = 0; i < EnrollmentList.size(); i++) {
            System.out.println(EnrollmentList.size());
            System.out.print(d.EnrollmentList.get(i).courseid);
            System.out.print("--");
            System.out.print(EnrollmentList.get(i).schoolyear);
            System.out.print("--");
            System.out.print(EnrollmentList.get(i).term);
        }
    }
}
