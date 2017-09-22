package com.xiaonei.mapper;

import java.util.List;

import com.xiaonei.entity.User;
import com.xiaonei.entity.Blog;

public interface UserMapper {

	List<User> queryUserList(User user);
	
	void addUser(User user);

	public void addBlog(Blog b);
}
