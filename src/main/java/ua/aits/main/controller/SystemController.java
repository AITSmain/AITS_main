/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.main.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.text.ParseException;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import ua.aits.main.functions.Constants;
import ua.aits.main.functions.Helpers;
import ua.aits.main.model.ProjectModel;
import ua.aits.main.model.UserModel;

/**
 *
 * @author kiwi
 */

@Controller
@Scope("session")
public class SystemController {
    UserModel Users = new UserModel();
    Helpers Helpers = new Helpers();
    ProjectModel Projects = new ProjectModel();
    
    @RequestMapping(value = {"/AITS/system/login","/system/login", "/AITS/system/login/","/system/login/"}, method = RequestMethod.GET)
    public ModelAndView login(HttpServletRequest request, HttpServletResponse response)  {
        ModelAndView model = new ModelAndView("/system/login");
        return model;
    }
    
    @RequestMapping(value = {"/AITS/system/index", "/system/main", "/system/index", "/AITS/system/index/"}, method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, ParseException  {
        ModelAndView model = new ModelAndView("/system/index");
        model.addObject("projects", Projects.getAllProjects());
        return model;
    }
    
    @RequestMapping(value = {"/AITS/system/add", "/system/add", "/AITS/system/add/", "/system/add/"}, method = RequestMethod.GET)
    public ModelAndView projectAdd(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model = new ModelAndView("/system/add");
    	String folder = "files/gallery";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
    	return model;
    }
    
    @RequestMapping(value = {"/AITS/system/edit/{id}", "/system/edit/{id}", "/AITS/system/edit/{id}/", "/system/edit/{id}/"}, method = RequestMethod.GET)
    public ModelAndView projectEdit(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	ModelAndView model= new ModelAndView("/system/edit");
    	ProjectModel temp = Projects.getProjectByID(id);
        String folder = "files/gallery";
    	model.addObject("folder", folder);
    	model.addObject("folder_str", folder.replace('/', '|'));
        model.addObject("project", temp);
    	return model;
    }
    
    @RequestMapping(value = {"/AITS/system/ajax/check/user", "/system/ajax/check/user", "/AITS/system/ajax/check/user/", "/system/ajax/check/user/"}, method = RequestMethod.GET)
	public @ResponseBody String archiveCheckUser(HttpServletRequest request,HttpServletResponse response) throws Exception {
    	return Users.isExitsUser(request.getParameter("user_login"), request.getParameter("user_password"));
    }
        
    @RequestMapping(value = {"/system/login.do","/AITS/system/login.do", "/system/login.do/","/AITS/system/login.do/"}, method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("user_code") String user_code, @RequestParam("user_login") String user_name, @RequestParam("user_password") String user_password, HttpServletRequest request, HttpServletResponse response) throws Exception {
        UserModel user = Users.getOneUserFullById(user_code);
        HttpSession session = request.getSession(true);
	session.setAttribute("user", user);
        return new ModelAndView("redirect:" + "/system/index");   
    }
    
    @RequestMapping(value = {"/system/do/insertdata", "/AITS/system/do/insertdata"}, method = RequestMethod.POST)
    public ModelAndView addArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String titleEN = request.getParameter("titleEN");
    	String titleUA = request.getParameter("titleUA");
    	String textEN = request.getParameter("textEN");
    	String textUA = request.getParameter("textUA");
        String files_data = request.getParameter("gallery-items");
        files_data = files_data.substring(0, files_data.length()-1);
    	String id = Projects.insertProject(titleEN, titleUA, textEN, textUA, files_data);
    	return new ModelAndView("redirect:" + "/system/index");
    }
    
    @RequestMapping(value = {"/system/do/editdata", "/AITS/system/do/editdata"}, method = RequestMethod.POST)
    public ModelAndView editArticle(HttpServletRequest request) throws SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedEncodingException, IOException {
    	request.setCharacterEncoding("UTF-8");
    	String project_id = request.getParameter("project_id");
    	String titleEN = request.getParameter("titleEN");
    	String titleUA = request.getParameter("titleUA");
    	String textEN = request.getParameter("textEN");
    	String textUA = request.getParameter("textUA");
        String files_data = request.getParameter("gallery-items");
        files_data = files_data.substring(0, files_data.length()-1);
    	Projects.updateProject(project_id, titleEN, titleUA, textEN, textUA, files_data);
    	return new ModelAndView("redirect:" + "/system/index");
    }
    
    @RequestMapping(value = {"/AITS/system/delete/{id}","/system/delete/{id}", "/AITS/system/delete/{id}/","/system/delete/{id}/"})
    public ModelAndView deleteArticle(@PathVariable("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
    	request.setCharacterEncoding("UTF-8");
        Projects.deleteArticle(id);
    	return new ModelAndView("redirect:" + "/system/index");
    }
    
    @RequestMapping(value = {"/AITS/system/do/removefile", "/system/do/removefile", "/AITS/system/do/removefile/", "/system/do/removefile/"}, method = RequestMethod.GET)
    public @ResponseBody String removeFileOrDir(HttpServletRequest request) {
    	String path = request.getParameter("path");
    	File temp = new File(Constants.home + path);
    	Boolean result = temp.delete();
    	return result.toString();
    }
    @RequestMapping(value = {"/AITS/system/uploadFile", "/system/uploadFile", "/AITS/system/uploadFile/", "/system/uploadFile/"}, method = RequestMethod.POST)
    public @ResponseBody
    String uploadFileHandlerFull(@RequestParam("upload") MultipartFile file, @RequestParam("path") String path,  HttpServletRequest request) {
                Integer curent = Integer.parseInt(Helpers.lastFileModified(Constants.home+path).getName().split("\\.")[0]) + 1;
                String ext = file.getOriginalFilename().split("\\.")[1];
                String name = curent.toString()+"."+ext;
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();
                // Creating the directory to store file
                File dir = new File(Constants.home+path);
                if (!dir.exists())
                    dir.mkdirs();
 
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath()
                        + File.separator + name);
                try (BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile))) {
                    stream.write(bytes);
                }
                String link_path = serverFile.getAbsolutePath().replace(Constants.home,"");
                return "<img class=\"main-img\" src=\""+Constants.URL+link_path+"\" realpath='"+link_path+"'  alt='" + link_path+file.getName() + "'  />";
            } catch (Exception e) {
                return "You failed to upload " + name + " => " + e.getMessage();
            }
        } else {
            return "You failed to upload " + name
                    + " because the file was empty.";
        }
    }
}
