/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.main.functions;

import java.io.File;
import java.io.FileFilter;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author kiwi
 */
public class Helpers {
    
    public File lastFileModified(String dir) {
    File fl = new File(dir);
    File[] files = fl.listFiles(new FileFilter() {          
        public boolean accept(File file) {
            return file.isFile();
        }
    });
    Integer lastMod = 0;
    File choice = null;
    for (File file : files) {
        Integer num =  Integer.parseInt(file.getName().split("\\.")[0]);
        if (num > lastMod) {
            choice = file;
            lastMod = num;
        }
    }
    return choice;
}
    public void sendMail(String url, String stack) {
        final String username = "robot@aits.ua";
        final String password = "37Rh!_09=S/U";
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication()  {
                return new javax.mail.PasswordAuthentication( username, password);
            }
        });
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("robot@aits.ua"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("sirakandrew@gmail.com"));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("director@aits.ua"));
            message.setSubject("AITS error mail:");
            message.setText("URL: "+url+"\nError stack: \n" + stack);
            Transport.send(message);
	} catch (MessagingException e) {
            throw new RuntimeException(e);
	}
        }
}
