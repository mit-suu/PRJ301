package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.dto.UserDTO;
import model.utils.DBUtils;

public class UserDAO {
    
    public UserDTO checkLogin(String userID, String password) throws SQLException, ClassNotFoundException {
        UserDTO user = null;
        Connection conn = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        
        try {
            conn = DBUtils.getConnection();
            String sql = "SELECT userID, password, fullName, email, phone, address, role, status "
                       + "FROM Users "
                       + "WHERE userID = ? AND password = ? AND status = 1";
            stm = conn.prepareStatement(sql);
            stm.setString(1, userID);
            stm.setString(2, password);
            rs = stm.executeQuery();
            
            if (rs.next()) {
                String fullName = rs.getString("fullName");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String address = rs.getString("address");
                String role = rs.getString("role");
                boolean status = rs.getBoolean("status");
                
                user = new UserDTO(userID, "", fullName, email, phone, address, role, status);
            }
        } finally {
            if (rs != null) rs.close();
            if (stm != null) stm.close();
            if (conn != null) DBUtils.closeConnection(conn);
        }
        
        return user;
    }
    
    public boolean createUser(UserDTO user) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            String sql = "INSERT INTO Users(userID, password, fullName, email, phone, address, role, status) "
                       + "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
            stm = conn.prepareStatement(sql);
            stm.setString(1, user.getUserID());
            stm.setString(2, user.getPassword());
            stm.setString(3, user.getFullName());
            stm.setString(4, user.getEmail());
            stm.setString(5, user.getPhone());
            stm.setString(6, user.getAddress());
            stm.setString(7, user.getRole());
            stm.setBoolean(8, user.isStatus());
            
            check = stm.executeUpdate() > 0;
        } finally {
            if (stm != null) stm.close();
            if (conn != null) DBUtils.closeConnection(conn);
        }
        
        return check;
    }
    
    public boolean updateUser(UserDTO user) throws SQLException, ClassNotFoundException {
        boolean check = false;
        Connection conn = null;
        PreparedStatement stm = null;
        
        try {
            conn = DBUtils.getConnection();
            String sql = "UPDATE Users SET fullName = ?, email = ?, phone = ?, address = ?, role = ?, status = ? "
                       + "WHERE userID = ?";
            stm = conn.prepareStatement(sql);
            stm.setString(1, user.getFullName());
            stm.setString(2, user.getEmail());
            stm.setString(3, user.getPhone());
            stm.setString(4, user.getAddress());
            stm.setString(5, user.getRole());
            stm.setBoolean(6, user.isStatus());
            stm.setString(7, user.getUserID());
            
            check = stm.executeUpdate() > 0;
        } finally {
            if (stm != null) stm.close();
            if (conn != null) DBUtils.closeConnection(conn);
        }
        
        return check;
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        UserDTO u=new UserDTO("mitsu", "123", "Tran Hiep", "trantuanhiep@gmail.com", "0355023845", "Da Nang", "User", true);
        UserDAO d=new UserDAO();
        boolean updateUser = d.updateUser(u);
        if (updateUser) System.out.println("true");
        else System.out.println("false");
    }
}