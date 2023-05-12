package Library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.*;
import java.sql.ResultSet;
import java.util.ArrayList;





public class DB_Connection {
	public String[][] selectData(String tab) {
	    ArrayList<String> collect = new ArrayList<String>();
	    int i;
	    String[][] str = new String[18][4];
	    try {
	        String sql = "SELECT * from "+tab;

	        ResultSet rs = db.getData(sql);
	        while (rs.next()) {
	        	i=0;
	        	str[i][1] = rs.getString("Book_ID");
	        	str[i][2] = rs.getString("Book_Name");
	        	str[i][3] = rs.getString("Author_Name");
	        	str[i][4] = rs.getString("Price");
	        	i++;
	        }

	    } catch (Exception e) {
	        System.out.println("getAllDocters()");
	        e.printStackTrace();
	    }

	    return str;
	}
	}
