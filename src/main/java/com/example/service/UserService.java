package com.example.service;

import com.example.dao.UserDAO;
import com.example.dao.UserRepo;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.management.relation.Role;
import java.util.Collection;
import java.util.Collections;
import java.util.stream.Collectors;


@Service
public class UserService implements UserDetailsService
{
    @Autowired
    private UserDAO userdao;

    @Autowired
    private UserRepo userRepo;

    @Transactional
    public void save(User user)
    {
        userdao.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepo.findUserByUserName(username);
        if(user == null)
        {
            throw new UsernameNotFoundException("Invalid username or password");
        }
        return new org.springframework.security.core.userdetails.User(user.getUserName(),user.getPassword(),mapRolesToAuthorities());
    }
    private Collection<? extends GrantedAuthority> mapRolesToAuthorities()
    {
        return Collections.singleton(new SimpleGrantedAuthority("USER"));
    }
}
