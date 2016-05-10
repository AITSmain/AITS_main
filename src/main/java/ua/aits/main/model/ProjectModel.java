/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.main.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import org.apache.commons.lang.StringEscapeUtils;
import ua.aits.main.functions.DB;

/**
 *
 * @author kiwi
 */
public class ProjectModel {
    
    private Integer project_id;
    private String project_name_en;
    private String project_name_ua;
    private String project_descr_en;
    private String project_descr_ua;
    private String project_lang;
    private List<String> project_img;

    public Integer getProject_id() {
        return project_id;
    }

    public void setProject_id(Integer project_id) {
        this.project_id = project_id;
    }

    public String getProject_name_en() {
        return project_name_en;
    }

    public void setProject_name_en(String project_name_en) {
        this.project_name_en = project_name_en;
    }

    public String getProject_name_ua() {
        return project_name_ua;
    }

    public void setProject_name_ua(String project_name_ua) {
        this.project_name_ua = project_name_ua;
    }

    public String getProject_descr_en() {
        return project_descr_en;
    }

    public void setProject_descr_en(String project_descr_en) {
        this.project_descr_en = project_descr_en;
    }

    public String getProject_descr_ua() {
        return project_descr_ua;
    }

    public void setProject_descr_ua(String project_descr_ua) {
        this.project_descr_ua = project_descr_ua;
    }

    public String getProject_lang() {
        return project_lang;
    }

    public void setProject_lang(String project_lang) {
        this.project_lang = project_lang;
    }

    public List<String> getProject_img() {
        return project_img;
    }

    public void setProject_img(List<String> project_img) {
        this.project_img = project_img;
    }
    
    public List<ProjectModel> getAllProjects() throws SQLException{
        ResultSet result = DB.getResultSet("SELECT * FROM `projects`;");
    	List<ProjectModel> projects = new LinkedList<>();
        while (result.next()) {
            ProjectModel project = new ProjectModel();
            project.setProject_id(result.getInt("project_id"));
            project.setProject_name_en(result.getString("project_name_en"));
            project.setProject_name_ua(result.getString("project_name_ua"));
            project.setProject_descr_en(result.getString("project_descr_en"));
            project.setProject_descr_ua(result.getString("project_descr_ua"));
            project.setProject_img(Arrays.asList(result.getString("project_img").split("\\s*,\\s*")));
            String langs = "";
            if(!"".equals(project.project_name_en)) {
                langs+= "UA,";
            }
            if(!"".equals(project.project_name_ua)) {
                langs+= "EN,";
            }
            if(!"".equals(langs)) {
                project.setProject_lang(langs.substring(0, langs.length()-1));
            }
            projects.add(project);
        }
        DB.closeCon();
        return projects;
    }
    
    public ProjectModel getProjectByID(String id) throws SQLException{
        ResultSet result = DB.getResultSet("SELECT * FROM `projects` WHERE project_id = '"+id+"';");
        result.first();
            ProjectModel project = new ProjectModel();
            project.setProject_id(result.getInt("project_id"));
            project.setProject_name_en(result.getString("project_name_en"));
            project.setProject_name_ua(result.getString("project_name_ua"));
            project.setProject_descr_en(result.getString("project_descr_en"));
            project.setProject_descr_ua(result.getString("project_descr_ua"));
            project.setProject_img(Arrays.asList(result.getString("project_img").split("\\s*,\\s*")));
            String langs = "";
            if(!"".equals(project.project_name_en)) {
                langs+= "UA,";
            }
            if(!"".equals(project.project_name_ua)) {
                langs+= "EN,";
            }
            if(!"".equals(langs)) {
                project.setProject_lang(langs.substring(0, langs.length()-1));
            }
        DB.closeCon();
        return project;
    }
    
    public String insertProject(String titleEN, String titleUA, String textEN, String textUA, String gallery) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("INSERT INTO `projects`(`project_name_en`, `project_name_ua`, `project_descr_en`, `project_descr_ua`, `project_img`) VALUES ("
            	+ "'"+StringEscapeUtils.escapeSql(titleEN)+"','"+StringEscapeUtils.escapeSql(titleUA)+"','"+StringEscapeUtils.escapeSql(textEN)+"','"+StringEscapeUtils.escapeSql(textUA)+"','"+gallery+"');");
    	ResultSet last_id = DB.getResultSet("SELECT MAX(project_id) as MaximumID FROM `projects`;");
        last_id.first();
        String id = last_id.getString("MaximumID");
        DB.closeCon();
        return id;
    }
    
    public void updateProject(String id, String titleEN, String titleUA, String textEN, String textUA, String gallery) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException {
        DB.runQuery("UPDATE `projects` SET "
                + "`project_id`= "+id+","
                + "`project_name_en`='"+StringEscapeUtils.escapeSql(titleEN)+"',"
                + "`project_name_ua`='"+StringEscapeUtils.escapeSql(titleUA)+"',"
                + "`project_descr_en`='"+StringEscapeUtils.escapeSql(textEN)+"',"
                + "`project_descr_ua`='"+StringEscapeUtils.escapeSql(textUA)+"',"
                + "`project_img`='"+StringEscapeUtils.escapeSql(gallery)+"' WHERE project_id = "+id+";");
    	DB.closeCon();
    }
    
    public Boolean deleteArticle(String id) throws SQLException{
        DB.runQuery("DELETE FROM `projects` WHERE `project_id` = "+ id +";");
            return true;
    }
}
