package com.wky.system.service;

import java.util.List;

import com.wky.system.entity.User;
import com.wky.system.info.Iuserdao;
import com.wky.system.infodo.Iuserdaodo;

public class Userservice {
	Iuserdao  info = new Iuserdaodo();
	public User findEmpByNameAndPassword(String name, String password) {
		// TODO Auto-generated method stub
		
		List<User>  list = info.queryAll();
		
		for (User user : list) {
			if(user.getUsername().equals(name)&&user.getPassworld().equals(password)) {
				return user;
			}
		}
		
		return null;
	}
	
	public List<User> findAll(){
		
		List<User>  list = info.queryAll();
		
		
		return list;
		
	}
	
	public void updateUser(int id, User user) {
		System.out.println(id);
		System.out.println(user.toString());
		info.updataUser(id, user);
		
	}

	public void addUser(User user) {
		info.addUser(user);
		
	}
	
	public void deleteuser(int id) {
		info.deleteUser(id);
	}

}
