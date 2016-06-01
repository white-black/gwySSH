package com.yue.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	DataBaseConn dbconn = new DataBaseConn();
	private PreparedStatement sta = null;  
    private ResultSet rs = null;  
    private Connection conn = null;
    public Connection getConn() {  
        conn = dbconn.getConn();
        return conn;  
    }  

    /** 
     * @param sql 
     *            sql语句  增加，删除，修改 
     * @param obj 
     *            参数 
     * @return 
     */ 
    public int update(String sql, Object... obj) {  
        int count = 0;  
        conn = getConn();  
        try {  
            sta = conn.prepareStatement(sql);  
            if (obj != null) {  
                for (int i = 0; i < obj.length; i++) {  
                    sta.setObject(i + 1, obj[i]);  
                }  
            }  
            count = sta.executeUpdate();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        } finally{  
           
            close();  
        }  
        return count;  
    }  

    /** 
     * @param sql sql语句 
     * @param obj 参数 
     * @return 数据集合 
     */ 
    public ResultSet Query(String sql,Object...obj){  
        conn=getConn();  
        try {  
            sta=conn.prepareStatement(sql);  
            if(obj!=null){  
                for(int i=0;i<obj.length;i++){  
                    sta.setObject(i+1, obj[i]);  
                }  
            }  
            rs=sta.executeQuery();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        return rs;  
    }  
       
    /** 
     * 关闭资源 
     */ 
    public void close() {  
        try {  
            if (rs != null) {  
                rs.close();  
            }  
        } catch (SQLException e) {  
            e.printStackTrace();  
        } finally {  
            try {  
                if (sta != null) {  
                    sta.close();  
                }  
            } catch (SQLException e2) {  
                e2.printStackTrace();  
            } finally {  
                if (conn != null) {  
                    try {  
                        conn.close();  
                    } catch (SQLException e) {  
                        e.printStackTrace();  
                    }  
                }  
            }  
        }  
    }  

}

