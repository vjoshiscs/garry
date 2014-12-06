package com.garryproject.users.dao;

import com.garryproject.users.model.User;

public interface UserDao {

	User findByUserName(String username);

}