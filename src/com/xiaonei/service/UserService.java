package com.xiaonei.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




import com.xiaonei.entity.User;
import com.xiaonei.entity.Blog;
import com.xiaonei.mapper.UserMapper;



@Service  
public class UserService {

	//
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
    public void addUsers(String name,String email,String pwd,String photo,String level,String loginDate,String sex,String visited){
        User  u = new User();
        u.setName(name);
        u.setEmail(email);
        u.setPwd(pwd);
        u.setLevel(level);
        u.setLoginDate(loginDate);
        
        u.setSex(sex);
        u.setVisited(visited);
        u.setPhoto(photo);
        userMapper.addUser(u);
    }
    public void addBlog(String blogName,Date creTime,String descript,Date updTime,int userId){
        Blog b=new Blog();
        b.setBlogName(blogName);
        b.setCreTime(creTime);
        b.setDescript(descript);
        b.setUpdTime(updTime);
        b.setUserId(userId);
        userMapper.addBlog(b);
    }
}
