package project;

public class Project {
	private int projectID;
	private String userID;
	private String projectIntro;
	private String projectGithub;
	private String projectSettings;
	private String projectName;
	
	private int pageNum;
	
	public int getProjectID() {
		return projectID;
	}
	public void setProjectID(int projectID) {
		this.projectID = projectID;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getProjectIntro() {
		return projectIntro;
	}
	public void setProjectIntro(String projectIntro) {
		this.projectIntro = projectIntro;
	}
	public String getProjectGithub() {
		return projectGithub;
	}
	public void setProjectGithub(String projectGithub) {
		this.projectGithub = projectGithub;
	}
	public String getProjectSettings() {
		return projectSettings;
	}
	public void setProjectSettings(String projectSettings) {
		this.projectSettings = projectSettings;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
}
