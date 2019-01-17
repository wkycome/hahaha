package com.wky.system.infodo;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.wky.system.entity.User;
import com.wky.system.info.Iuserdao;
import com.wky.system.utils.DbutilsRunner;

public class Iuserdaodo implements Iuserdao{

	@Override
	public List<User> queryAll() {
		
		DbutilsRunner run;
		List<User> query = null;
		String sql = "select * from user";
		
		try {
			run = new DbutilsRunner();
			QueryRunner runner = run.getRunner() ;
			 query = runner.query(sql, new BeanListHandler<User>(User.class));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		for (User employee : query) {
			System.out.println(employee.toString());
		}
		return query;
		
	}

	@Override
	public boolean addUser(User user) {
		
		DbutilsRunner run = new DbutilsRunner();
		
		//添加加用户信息
		String sql = "insert into user values(?,?,?,?,?,?)";
		
		QueryRunner runner = run.getRunner();
		Object[] params = {null,user.getUsername(),user.getPassworld(),user.getPhone(),user.getE_mail(),user.getU_gender()};
		try {
			runner.update(sql, params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}

	@Override
	public String updataUser(int id, User user) {
		
		DbutilsRunner run = new DbutilsRunner();
		
		//添加加用户信息
		String sql = "update user set username = ?, passworld = ?, phone = ?, u_gender = ?,  e_mail = ?  where userId = ?";
		Object[] params = {user.getUsername(),user.getPassworld(),user.getPhone(),user.getU_gender(),user.getE_mail(),id};
		QueryRunner runner = run.getRunner();
		
		try {
			runner.update(sql,params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

	@Override
	public String deleteUser(int id) {
		DbutilsRunner run = new DbutilsRunner();
		
		//添加加用户信息
		String sql = "delete from user where userId = ?";
		Object[] params = {id};
		
		QueryRunner runner = run.getRunner();
		try {
			runner.update(sql,params);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

}
