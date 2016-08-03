package com.piotr.service;

import com.piotr.model.User;

import java.util.List;

/**
 * Created by jalos on 06.07.2016.
 */
public interface UserService {
List<User> findAll();
 User save(User user);
void delete(Long id);
User findById(long id);

}
