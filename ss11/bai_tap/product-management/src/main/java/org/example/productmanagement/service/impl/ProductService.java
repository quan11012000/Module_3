package org.example.productmanagement.service.impl;

import org.example.productmanagement.common.exception.ProductNotFoundException;
import org.example.productmanagement.entity.Product;
import org.example.productmanagement.repository.IProductRepository;
import org.example.productmanagement.repository.impl.ProductRepository;
import org.example.productmanagement.service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static final IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(Product product) throws ProductNotFoundException {
        productRepository.update(product);
    }

    @Override
    public void remove(int id) throws ProductNotFoundException {
        productRepository.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }
}
