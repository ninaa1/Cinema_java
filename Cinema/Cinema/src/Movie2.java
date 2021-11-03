
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class Movie2 {
    
      public void updateDeleteMovie(char o,Integer id, String title,String description, String fDate,String time){
        Connection con=MyConnection.getConnection();
         PreparedStatement ps;
         //update
         if(o == 'u'){
            try {
                ps=con.prepareStatement("UPDATE `movies` SET `title`= ?,`description`= ?,`from date`= ?,`time`=? WHERE `id`= ?");
                ps.setString(1, title);
                ps.setString(2, description);
                // ps.setString(3, value);
                ps.setString(3, fDate);
                ps.setString(4, time);
                ps.setInt(5, id);
            
            if(ps.executeUpdate()>0){
                JOptionPane.showMessageDialog(null,"uspješno ažuriranja");
            }
            } catch (SQLException ex) {
                Logger.getLogger(Movies1.class.getName()).log(Level.SEVERE, null, ex);
            }
         }
        
        else if(o == 'd'){
            try {
                ps=con.prepareStatement("DELETE FROM `movies` WHERE `id`=?");
               
                ps.setInt(1, id);
            
            if(ps.executeUpdate()>0){
                JOptionPane.showMessageDialog(null,"Film je obrisan");
            }
            } catch (SQLException ex) {
                Logger.getLogger(Movies1.class.getName()).log(Level.SEVERE, null, ex);
            }
         }
    }
}
