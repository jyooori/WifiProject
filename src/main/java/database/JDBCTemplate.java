package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTemplate {
	
	public static Connection getConnection() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		String url = "jdbc:mariadb://192.168.0.22:3306/wifi_db";
		String id = "wifi_user";
		String pw = "wifi1234";
		
		Connection con = null;
		
		try {
			con = DriverManager.getConnection(url, id, pw);
			
			con.setAutoCommit(false);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	public static boolean isConnection(Connection con) {
		boolean valid = true;
		
		try {
			if(con == null || con.isClosed()) {
				valid = false;
			}
		} catch (SQLException e) {
			valid = true;
			e.printStackTrace();
		} 
		return valid;
	}
	
	public static void close(Connection con) {
		if(isConnection(con)) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
    //stmt가 null 아닐때 close
    public static void close(Statement stmt) {
    	if(stmt != null) {
    		try {
    			stmt.close();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
    
    //rs가 null 아닐때 close
    public static void close(ResultSet rs) {
    	if(rs != null) {
    		try {
    			rs.close();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
    
    //연결상태라면 commit
    public void commit(Connection con) {
    	if(isConnection(con)) {
    		try {
    			con.commit();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
    
    //연결상태라면 rollback
    public static void rollback(Connection con) {
    	if(isConnection(con)) {
    		try {
    			con.rollback();
    		} catch (SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
}
