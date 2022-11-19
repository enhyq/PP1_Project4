package com.enhyq.pp1.project4.common;

import com.mysql.jdbc.Driver;
import java.sql.*;

public class JDBCUtil {
    public static Connection getConnection(){
        Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://walab.handong.edu:3306/p2_21900050", "p2_21900050", "ueL9ies8Ei");
        } catch(Exception e){
            System.out.println(e);
        }
        return con;
    }

//    public  static void main(String args[]){
//        Connection conn = getConnection();
//        if(conn != null) System.out.println("DB connected!");
//        else System.out.println("DB connection error!");
//    }
}
