

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class Movies1 {
    public int id;
    public String movie;
    public String description;
    public String hall;
    public String fdate;
    public String time;
    
    
    public Movies1 (Integer Id,String Movie,String Description,String Hall,String Fdate,String Time){
        this.id=Id;
        this.movie=Movie;
        this.description=Description;
        this.hall=Hall;
        this.fdate=Fdate;
        this.time=Time;
    }

  
     public Integer getId(){
        return id;
    }
    
    public String getMovie(){
        return movie;
    }
    public String getdescription(){
        return description;
    }
    public String getHall(){
        return hall;
    }
    public String getFdate(){
        return fdate;
    }
    
    public String getTime(){
        return time;
    }
    
  
}
