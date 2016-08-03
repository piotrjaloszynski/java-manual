package com.piotr.dao;

import com.piotr.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by jalos on 06.07.2016.
 */
@Repository
public interface UserDao extends JpaRepository<User,Long> {


}
