package com.xiaonei.mapper;

import java.util.List;

import com.xiaonei.entity.User;

public interface UserMapper {

	List<User> queryUserList(User user);

}
