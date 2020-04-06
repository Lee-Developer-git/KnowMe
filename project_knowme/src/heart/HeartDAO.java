package heart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class HeartDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public HeartDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/heart?serverTimezone=UTC";
			String dbID = "quftld3";
			String dbPassword = "dbswpgur12!";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int setHeart(String userID, int projectID) {
		String SQL = "INSERT INTO heart VALUES (?, ?, ?)";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);
			pstmt.setInt(2, projectID);
			pstmt.setInt(3, 1);
			
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}
	
	public Heart getHeart(String userID) {
		String SQL = "SELECT * FROM heart WHERE userID= ?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Heart heart = new Heart();

				heart.setUserID(rs.getString(1));
				heart.setProjectID(rs.getInt(2));
				heart.setHeartLike(rs.getInt(3));

				return heart;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
}
