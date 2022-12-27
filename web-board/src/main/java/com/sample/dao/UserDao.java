package com.sample.dao;

import com.sample.util.SqlMapper;
import com.sample.vo.User;

public class UserDao {
	
	public User getUserById(String id) {
		return (User)SqlMapper.selectOne("users.getUserById", id);
	}

	public User getUserByEmail(String email) {
		return (User)SqlMapper.selectOne("users.getUserByEmail", email);
	}
	
	public void insertUser(User user) {
		SqlMapper.insert("users.insertUser", user);
	}
}
