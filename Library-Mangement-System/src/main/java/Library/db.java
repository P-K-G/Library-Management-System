package Library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class db {

	public static ResultSet getData(String sql) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
	    try {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
			Statement stmt = conn.createStatement();
			rs = stmt.executeQuery(sql) ;
		} catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

}
