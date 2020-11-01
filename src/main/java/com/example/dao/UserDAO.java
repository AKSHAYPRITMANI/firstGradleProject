package com.example.dao;

import com.example.model.User;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class UserDAO
{
    @Autowired
    private EntityManager entityManager;

    public void save(User user)
    {
        Session currentSession = entityManager.unwrap(Session.class);
        currentSession.save(user);
    }
}
