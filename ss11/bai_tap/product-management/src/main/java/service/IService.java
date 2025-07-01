package service;

import java.util.List;

public interface IService<T>{
    List<T> findAll();
    void save(T t);
    T findById(int id);
    void update(T t,int id);
    void remove(int id);
    List<T> findByName(String name);
}
