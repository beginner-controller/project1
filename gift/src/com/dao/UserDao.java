package com.dao;

import com.model.User;
import com.utils.DBUtil;
import java.sql.*;

public class UserDao {
    /**
     * 登录页面：判断用户名和密码是否与数据库一致
     * @param user
     * @return
     */
    public boolean login(User user){

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "select * from user where name=? and password=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getName());
            ps.setString(2,user.getPassword());
            rs = ps.executeQuery();
            while (rs.next()){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }
        return false;
    }
    /**
     * 注册页面：判断用户是否存在
     * @param user
     * @return
     */
    public boolean checkUser(User user) {

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "select * from user where name=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getName());
            rs = ps.executeQuery();
            if(rs == null){
                return false;
            }else if(rs != null){
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.close(conn,ps,rs);
        }
        return false;
    }

    /**
     * 将注册信息插入数据库
     * @param user
     * @return
     */
    public boolean register(User user) {

        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = DBUtil.getConnection();
            String sql = "insert into user(name,password,email,phone,QQ) values(?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getName());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getEmail());
            ps.setString(4,user.getPhone());
            ps.setString(5,user.getQQ());
            int count = ps.executeUpdate();
            if (count > 0){
                return true;
            }else {
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBUtil.closes(conn,ps);
        }
        return false;
    }
}
