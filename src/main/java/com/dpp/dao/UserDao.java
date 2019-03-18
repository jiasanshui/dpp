package com.dpp.dao;

import com.dpp.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.Map;

/**
 * 用户数据处理层
 */
@Component
public interface UserDao {

    @Insert("insert into user(username,pwd,tel) values(#{userName},#{password},#{tel})")
    int addUser(User user);

    @Select("select * from user where pwd=#{pwd} and (username=#{unameAndTel} or tel=#{unameAndTel})")
    Map userLogin(Map map);
}
