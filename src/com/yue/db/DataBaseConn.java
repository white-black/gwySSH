package com.yue.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DataBaseConn {
	public Connection conn = null;
	public void createConn(){
		if(conn == null){
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
				String url="jdbc:oracle:thin:@localhost:1521:yue";
				
				conn = DriverManager.getConnection(url,"scott","tiger");
			}catch(Exception e){
				e.printStackTrace();
			}		
		}
	}
	public Connection getConn(){
		if(conn == null){
			createConn();
		}
		return conn;
	}
	public void closeConn(){
		
	}
}
