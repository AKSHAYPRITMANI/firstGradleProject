package com.example.service;

import com.example.dao.UserDAO;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
public class UserService
{
    @Autowired
    private UserDAO userdao;

    @Transactional
    public void save(User user)
    {
        userdao.save(user);
    }
}
