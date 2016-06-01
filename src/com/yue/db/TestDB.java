package com.yue.db;

import org.junit.Test;

public class TestDB {
	@Test
	public void testConn(){
		DataBaseConn conn = new DataBaseConn();
		System.out.println(conn.getConn());
		
	}
}
