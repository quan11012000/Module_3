package org.example.displaycustomers.controller;

import org.example.displaycustomers.entity.Customer;
import org.example.displaycustomers.service.ICustomerService;
import org.example.displaycustomers.service.impl.CustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name="CustomerController" , urlPatterns = "/customer")
public class CustomerController extends HttpServlet {
private static ICustomerService customerService =new CustomerService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customers =customerService.findAll();
        req.setAttribute("customers",customers);
        req.getRequestDispatcher("/WEB-INF/list.jsp").forward(req,resp);
    }
}
