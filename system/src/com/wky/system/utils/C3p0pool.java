package com.wky.system.utils;

import java.beans.PropertyVetoException;
import java.sql.Connection;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3p0pool {
	
private static C3p0pool c3p0pool;
	
	private static ComboPooledDataSource cpds;
	
	static{
		c3p0pool = new C3p0pool();
	}
 
	public C3p0pool() {
		
		cpds = new ComboPooledDataSource();
		
	}
	
	public static DataSource getDataSource() throws PropertyVetoException {
		
		
		return cpds;
		
	}
	
	public static C3p0pool getInstance(){
		return c3p0pool;
	}
	
	public Connection getConnection(){
		Connection conn = null;
		try {
			conn = cpds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
