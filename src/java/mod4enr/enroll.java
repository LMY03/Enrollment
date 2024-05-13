// AUTHOR : Ardales, Darius Vincent Cirujales, Barrion, Ryan Onil Cruz, Lin, Jonathan Wu, Sze,Calvert Hans Bernabe S11 CINFO-003

package mod4enr;
import java.sql.*;
import java.util.*;

public class enroll {

    public students                 Student         = new students();
    public ArrayList<enrollment>    EnrollmentList  = new ArrayList<> ();
    public ArrayList<enrollment>    CourseList      = new ArrayList<> ();
    
 
    public enroll()  {  // perform all the necessary data loading from DB
        EnrollmentList.clear();
        CourseList.clear();
    };                                
    public int clearEnrollment ()   { // clears enrollment data of the student 
        EnrollmentList.clear();
        return 1;
    
    }  
    public int loadCourses () { // load valid courses into the course list      
        try 
        {
            Connection  conn;
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/enrolldb?useTimezone=true&serverTimezone=UTC&user=root&password=12345678&useSSL=false"); 
            PreparedStatement sqlstatement = conn.prepareStatement ("SELECT courdeg.degree, courdeg.courseid    " +
                                                            "FROM   students stud  JOIN coursedegree courdeg    " +
                                                            "ON     stud.degreeid = courdeg.degree              " +
                                                            "WHERE  stud.studentid = ?                          " +
                                                            "AND    stud.degreeid = courdeg.degree              " + 
                                                            "AND    courdeg.courseid                            " +
                                                            "NOT IN                                             " +
                                                            "(SELECT courseid                                   " +
                                                            " FROM enrollment                                   " +
                                                            " WHERE  studentid = ?);                            ");
            sqlstatement.setInt    (2, Student.studentid);
            sqlstatement.setLong   (1, Student.studentid);
            ResultSet rs = sqlstatement.executeQuery();   
            CourseList.clear();
            while (rs.next()) 
            {
                enrollment em = new enrollment();
                em.courseid = rs.getString("courdeg.courseid");
                if (EnrollmentList.isEmpty()) {
                    CourseList.add(em);
                }
                for (int i = 0; i < EnrollmentList.size(); i++) {
                    if (!EnrollmentList.get(i).courseid.equals(em.courseid)) {
                        CourseList.add(em);
                        break;
                    }
                }
            }
            rs.close();
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
    public int confirmEnrollment()  {
        for (int i = 0; i < EnrollmentList.size(); i++) {
            EnrollmentList.get(i).addRecord();
        }
        return 1;
    }   // saves enrollment data into the Database
    
    public int addtoenroll (int s_term, int s_schoolyear, String courseid) {
        enrollment e = new enrollment();
        e.studentid = Student.studentid;
        e.term   = s_term;
        e.schoolyear = s_schoolyear;
        e.courseid = courseid;
        EnrollmentList.add(e);
        return 1;
    }
}