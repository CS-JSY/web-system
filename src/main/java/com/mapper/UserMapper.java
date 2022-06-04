package com.mapper;

import com.beans.UserInfo;

public interface UserMapper {
	public UserInfo login(String userName, String password);
}
