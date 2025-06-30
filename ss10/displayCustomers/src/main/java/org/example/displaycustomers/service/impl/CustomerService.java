package org.example.displaycustomers.service.impl;

import org.example.displaycustomers.entity.Customer;
import org.example.displaycustomers.repo.CustomerRepo;
import org.example.displaycustomers.service.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private static CustomerRepo customerRepo=new CustomerRepo();
    @Override
    public List<Customer> findAll() {
        return customerRepo.findAll();
    }

    @Override
    public void add(Customer customer) {
        customerRepo.add(customer);
    }
}
