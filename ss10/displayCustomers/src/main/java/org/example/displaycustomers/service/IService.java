package org.example.displaycustomers.service;

import java.util.List;

public interface IService<T> {
    List<T> findAll();
    void add(T t);
}
