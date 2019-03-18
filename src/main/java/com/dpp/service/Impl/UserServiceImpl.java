package com.dpp.service.Impl;

import com.dpp.dao.UserDao;
import com.dpp.entity.User;
import com.dpp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * 用户逻辑业务层
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Autowired
    private HttpSession session;

    /**
     * 注册用户
     * @param user
     * @return
     */
    @Override
    public int addUser(User user) {
        return userDao.addUser(user);
    }

    /**
     * 用户登录判断
     * @param map
     * @return
     */
    @Override
    public Boolean userLogin(Map map) {
        Map userLogin = userDao.userLogin(map);
        if (userLogin!=null&&!"".equals(userLogin)){
            session.setAttribute("userName",userLogin.get("username"));
            return true;
        }
        return false;
    }
}
