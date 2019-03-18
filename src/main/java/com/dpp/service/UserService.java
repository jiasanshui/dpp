package com.dpp.service;

import com.dpp.entity.User;

import java.util.Map;

public interface UserService {

    int addUser(User user);

    Boolean userLogin(Map map);
}
