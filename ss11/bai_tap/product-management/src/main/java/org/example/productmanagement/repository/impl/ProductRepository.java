package org.example.productmanagement.repository.impl;

import org.example.productmanagement.common.exception.ProductNotFoundException;
import org.example.productmanagement.entity.Product;
import org.example.productmanagement.repository.IProductRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class ProductRepository implements IProductRepository {
    private static final List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "iPhone", 999.99, "Smartphone", "Apple"));
        products.add(new Product(2, "Galaxy S21", 899.99, "Samsung phone", "Samsung"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id) {
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(Product product) throws ProductNotFoundException {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == product.getId()) {
                products.set(i,product);
                return;
            }
        }
        throw new ProductNotFoundException("Khong tim thay san pham");
    }

    @Override
    public void remove(int id) throws ProductNotFoundException {
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                products.remove(i);
                return;
            }
        }
        throw new ProductNotFoundException("Khong tim thay san pham");
    }

    @Override
    public List<Product> findByName(String name) {
        return products.stream().filter(product -> product.getName().toLowerCase().contains(name.toLowerCase())).collect(Collectors.toList());
    }
}
