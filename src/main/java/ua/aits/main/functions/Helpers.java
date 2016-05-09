/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ua.aits.main.functions;

import java.io.File;
import java.io.FileFilter;

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
}
