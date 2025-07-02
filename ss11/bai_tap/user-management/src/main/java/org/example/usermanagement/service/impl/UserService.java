package org.example.usermanagement.service.impl;

import org.example.usermanagement.entity.User;
import org.example.usermanagement.repo.IUserRepository;
import org.example.usermanagement.repo.impl.UserRepository;
import org.example.usermanagement.service.IUserService;

import java.sql.SQLException;
import java.util.List;

public class UserService implements IUserService {
    private static final IUserRepository userRepository = new UserRepository();
    @Override
    public void insertUser(User user) {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> sortByName(boolean ascending) {
        return userRepository.sortByName(ascending);
    }
}
