package com.xiaonei.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xiaonei.entity.User;
import com.xiaonei.mapper.UserMapper;



@Service  //表示业务类
public class UserService {

	   //自动绑定一个对象
	@Autowired
	private UserMapper userMapper;
	
	
	public User queryUserList(String email, String pwd){
		User user = new User();
		user.setEmail(email);
		user.setPwd(pwd);

		List<User> userList = userMapper.queryUserList(user);
		if (userList.size() > 0){
			return userList.get(0);
		}
		
		return null;
	}
	
}
