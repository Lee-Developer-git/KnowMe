package project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import project.Project;

public class ProjectDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public ProjectDAO() {	
		try {
			String dbURL = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC";
			String dbID = "quftld3";
			String dbPassword = "dbswpgur12!";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Project getProject(int projectID) {
		String SQL = "SELECT * FROM PROJECT WHERE projectID = ?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setInt(1, projectID);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Project project = new Project();

				project.setProjectID(rs.getInt(1));
				project.setUserID(rs.getString(2));
				project.setProjectIntro(rs.getString(3));
				project.setProjectGithub(rs.getString(4));
				project.setProjectSettings(rs.getString(5));
				project.setProjectName(rs.getString(6));

				return project;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
	
	public int getNext() {
		String SQL = "SELECT projectID FROM project ORDER BY projectID DESC";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return rs.getInt(1) + 1;
			}

			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}
	
	public int getProjectCount(String userID) {		
		String SQL = "SELECT COUNT(*) FROM project WHERE userID=?";
		try {
			pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, userID);
			rs = pstmt.executeQuery();

			if (rs.next()) {		
				int total_count = 0;

				total_count = rs.getInt(1);
				
				return total_count; 
			}
			
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	public ArrayList<Project> getListA(String userID) {
		String SQL = "SELECT * FROM project WHERE userID = ?";
		
		ArrayList<Project> list = new ArrayList<Project>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1,  userID);
			rs = pstmt.executeQuery();
		
			while (rs.next()) {
				Project project = new Project();
				
				project.setProjectID(rs.getInt(1));
				project.setUserID(rs.getString(2));
				project.setProjectIntro(rs.getString(3));
				project.setProjectGithub(rs.getString(4));
				project.setProjectSettings(rs.getString(5));
				project.setProjectName(rs.getString(6));
				
				list.add(project);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public ArrayList<Project> getListB() {
		String SQL = "SELECT * FROM project WHERE projectID < ? ORDER BY DESC";
		
		ArrayList<Project> list = new ArrayList<Project>();
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1, getNext());
			rs = pstmt.executeQuery();
		
			while (rs.next()) {
				Project project = new Project();
				
				project.setProjectID(rs.getInt(1));
				project.setUserID(rs.getString(2));
				project.setProjectIntro(rs.getString(3));
				project.setProjectGithub(rs.getString(4));
				project.setProjectSettings(rs.getString(5));
				project.setProjectName(rs.getString(6));
				
				list.add(project);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public int write(String userID, String projectIntro, String projectGithub, String projectSettings,
			String projectName) {
		String SQL = "INSERT INTO project VALUES (?, ?, ?, ?, ?, ?)";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1, getNext());
			pstmt.setString(2, userID);
			pstmt.setString(3, projectIntro);
			pstmt.setString(4, projectGithub);
			pstmt.setString(5, projectSettings);
			pstmt.setString(6, projectName);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}

	public int update(String projectIntro, String projectGithub, String projectSettings,
			String projectName, int projectID) {
		String SQL = "UPDATE project SET projectIntro = ?, projectGithub = ?, projectSettings = ?, projectName = ? WHERE projectID = ?";

		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1, projectIntro);
			pstmt.setString(2, projectGithub);
			pstmt.setString(3, projectSettings);
			pstmt.setString(4, projectName);
			pstmt.setInt(5, projectID);

			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return -1;
	}
	
	public int delete(int projectID) {
		String SQL = "DELETE FROM project WHERE projectID = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setInt(1,  projectID);
			
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return -1;	
	}
}