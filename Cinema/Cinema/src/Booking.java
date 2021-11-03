
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
public class Booking {
    
    public void updateDeleteRes(char o, String hall,String seats, String user,String movie){
        Connection con=MyConnection.getConnection();
         PreparedStatement ps;
         //update
         if(o == 'u'){
            
            try {
                ps=con.prepareStatement("UPDATE `reservation` SET `hall`= ?,`seats`= ?,`user`= ?,`movie`=? WHERE `date`= ?");
           
                ps.setString(1, hall);
                ps.setString(2, seats);
               // ps.setString(3, value);
                ps.setString(3, user);
                ps.setString(4, movie);
               // ps.setInt(5, id);
            //
            if(ps.executeUpdate()>0){
                JOptionPane.showMessageDialog(null,"uspješno ažuriranja");
            }
             } catch (SQLException ex) {
                Logger.getLogger(Booking.class.getName()).log(Level.SEVERE, null, ex);
            }
           
         }
        
        else if(o == 'd'){
            try {
                ps=con.prepareStatement("DELETE FROM `reservation` WHERE `seats`=?");
               
               ps.setString(1, seats);
            
            if(ps.executeUpdate()>0){
                JOptionPane.showMessageDialog(null,"Rezervacija obrisana");
            }
            } catch (SQLException ex) {
                Logger.getLogger(Booking.class.getName()).log(Level.SEVERE, null, ex);
            }
         }
    }
}
