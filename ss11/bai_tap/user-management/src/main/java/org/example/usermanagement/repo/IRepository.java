package org.example.usermanagement.repo;

import org.example.usermanagement.entity.User;

import java.sql.SQLException;
import java.util.List;

public interface IRepository<T>{
    public void insertUser(T t);
    public T selectUser(int id);
    public List<T> selectAllUsers();
    public boolean deleteUser(int id);
    public boolean updateUser(T t);
    public List<T> findByCountry(String country);
    public List<User> sortByName(boolean ascending);
}
