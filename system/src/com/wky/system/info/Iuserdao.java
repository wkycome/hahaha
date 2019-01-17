package com.wky.system.info;

import java.util.List;

import com.wky.system.entity.User;

public interface Iuserdao {
	
	public List<User>  queryAll();
	public boolean addUser(User user);
	
	public String updataUser(int id,User user);
	
	public String deleteUser(int id);

}
