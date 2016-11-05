package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.awt.Window;
import java.lang.String;

public class connectDB {

	public static boolean ConnDB(String username, String password, String email) {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		Connection cnn= null;
		Statement stm = null;
        ResultSet rs= null;
        boolean tmp = false;	
       
        try {
        	cnn= DriverManager.getConnection("jdbc:mysql://localhost/hoatdongdoan", "root","1234");
        	stm= cnn.createStatement();
        	rs = stm.executeQuery("select * from hoatdongdoan.doanvien where mssv='"+username+"'and password='"+password+"' and email='"+email+"'    ");
        	tmp= rs.next();
            } 
        catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} 
        	
        		
		return tmp;
	}
}