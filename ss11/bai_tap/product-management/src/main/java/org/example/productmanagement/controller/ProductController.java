package org.example.productmanagement.controller;

import org.example.productmanagement.entity.Product;
import org.example.productmanagement.service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductController", urlPatterns = "/products")
public class ProductController extends HttpServlet {
    private final ProductService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreatForm(req, resp);
                break;
            case "edit":
                showEditForm(req, resp);
                break;
            case "view":
                viewProduct(req, resp);
                break;
            case "search":
                searchProduct(req, resp);
                break;
            default:
                listProducts(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) action = "";
        switch (action) {
            case "create":
                createProduct(req, resp);
                break;
            case "edit":
                updateProduct(req, resp);
                break;
            case "delete":
                deleteProduct(req, resp);
                break;
        }
    }

    private void createProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        String manufacturer = req.getParameter("manufacturer");
        Product product = new Product(id, name, price, description, manufacturer);
        productService.save(product);
        resp.sendRedirect("/products");

    }

    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        String manufacturer = req.getParameter("manufacturer");
        Product product = new Product(id, name, price, description, manufacturer);
        productService.update(product);
        resp.sendRedirect("/products");
    }

    private void deleteProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("deleteId"));
        productService.remove(id);
        resp.sendRedirect("/products");
    }

    private void searchProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("search");
        List<Product> list = productService.findByName(name);
        req.setAttribute("products", list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("products/list.jsp");
        dispatcher.forward(req, resp);

    }

    private void listProducts(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list = productService.findAll();
        req.setAttribute("products", list);
        RequestDispatcher dispatcher = req.getRequestDispatcher("products/list.jsp");
        dispatcher.forward(req, resp);
    }

   private void showCreatForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       RequestDispatcher dispatcher = req.getRequestDispatcher("products/create.jsp");
       dispatcher.forward(req, resp);
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = productService.findById(id);
        if(product != null){
            req.setAttribute("product", product);
            RequestDispatcher dispatcher = req.getRequestDispatcher("products/edit.jsp");
            dispatcher.forward(req, resp);
        }else {
            resp.sendRedirect("/products");
        }
    }

    private void viewProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = productService.findById(id);
        if(product != null){
            req.setAttribute("product", product);
            RequestDispatcher dispatcher = req.getRequestDispatcher("products/view.jsp");
            dispatcher.forward(req, resp);
        }else {
            resp.sendRedirect("/products");
        }
    }

    private void showDeleteForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        productService.remove(id);
        resp.sendRedirect("/products");

    }
}
