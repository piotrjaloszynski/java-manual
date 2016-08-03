package com.piotr.service.Impl;

import com.piotr.dao.UserDao;
import com.piotr.model.User;
import com.piotr.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jalos on 07.07.2016.
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    public List<User> findAll() {
        List<User> users = userDao.findAll();
        return users;

    }

    public User save(User user) {
        return userDao.save(user);
    }

    public void delete(Long id) {
        userDao.delete(id);
    }

    public User findById(long id) {
        return userDao.findOne(id);

    }

}