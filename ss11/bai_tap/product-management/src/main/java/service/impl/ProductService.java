package service.impl;

import entity.Product;
import service.IProductService;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static final Map<Integer, Product> products = new HashMap<>();
    static {
        products.put(1, new Product(1, "iPhone", 999.99, "Smartphone", "Apple"));
        products.put(2, new Product(2, "Galaxy S21", 899.99, "Samsung phone", "Samsung"));
    }
    @Override
    public List<Product> findAll() {
        return new  ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(Product product, int id) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> list = new ArrayList<>();
        for (Product product : products.values()) {
            if (product.getName().equals(name)) {
                list.add(product);
            }
        }
        return list;
    }
}
