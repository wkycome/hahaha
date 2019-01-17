package com.wky.system.utils;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.apache.commons.dbutils.QueryRunner;

import com.mchange.v2.c3p0.ComboPooledDataSource;



public class DbutilsRunner {
	
	QueryRunner runner;
	
	public DbutilsRunner() {
		DataSource source;
		try {
			source = C3p0pool.getDataSource();
			// ����runner����
		 runner = new QueryRunner(source);
		} catch (PropertyVetoException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
	}
	
	public QueryRunner  getRunner() {
		return runner;
	}

}
