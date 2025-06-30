package org.example.displaycustomers.repo;

import org.example.displaycustomers.entity.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepo {
    private static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer("Nguyễn Tiến Quân", "11/01/2000", "Đà nẵng", "https://mas.edu.vn/wp-content/uploads/2022/08/hinh-nen-gai-xinh-9-1.jpg"));
        customers.add(new Customer("Phan Thanh Hà", "11/01/2000", "Đà nẵng", "https://mas.edu.vn/wp-content/uploads/2022/08/hinh-nen-gai-xinh-9-1.jpg"));
        customers.add(new Customer("Nguyễn Tiến Quân", "11/01/2000", "Đà nẵng", "https://mas.edu.vn/wp-content/uploads/2022/08/hinh-nen-gai-xinh-9-1.jpg"));
        customers.add(new Customer("Phan Thanh Hà", "11/01/2000", "Đà nẵng", "https://mas.edu.vn/wp-content/uploads/2022/08/hinh-nen-gai-xinh-9-1.jpg"));
    }
    public List<Customer> findAll() {
        return customers;
    }
    public void add(Customer customer) {
            customers.add(customer);
    }
}
