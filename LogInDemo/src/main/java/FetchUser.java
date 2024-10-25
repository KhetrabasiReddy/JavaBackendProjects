
import java.sql.*;
public class FetchUser {
	
	public User fetchUser(String userName) {
		String url = "jdbc:mysql://localhost:3306/fullstackdb";
		String sqlUser = "khetrabasi";
		String sqlPass = "password";
		String query = "select * from users where user_name = ?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			 System.out.println("Entered inside the try block of connection");
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 con = DriverManager.getConnection(url, sqlUser, sqlPass);
			 ps = con.prepareStatement(query);
			 ps.setString(1, userName);
			 rs = ps.executeQuery();
			 System.out.println("Connection is successful");
			if(rs.next()) {
				String user = rs.getString("user_name");
				String pass = rs.getString("password");
				String img = rs.getString("images");
				System.out.println(user + " : "+ pass);
				return new User(user, pass,img);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
				try {
					if(con != null)con.close();
					if(ps != null)ps.close();
					if(rs != null)rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		System.out.println("User not found...");
		return null;
	}
	
}


