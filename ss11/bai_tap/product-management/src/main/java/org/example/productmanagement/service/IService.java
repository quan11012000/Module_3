package org.example.productmanagement.service;

import org.example.productmanagement.common.exception.ProductNotFoundException;

import java.util.List;

public interface IService<T>{
    List<T> findAll();
    void save(T t);
    T findById(int id);
    void update(T t) throws ProductNotFoundException;
    void remove(int id) throws ProductNotFoundException;
    List<T> findByName(String name);
}
