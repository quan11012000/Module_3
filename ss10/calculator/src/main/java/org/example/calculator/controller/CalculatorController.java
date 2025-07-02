package org.example.calculator.controller;

import org.example.calculator.service.CalculatorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculate")
public class CalculatorController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean isValidInput = true;
        float first=0;
        try {
            first = Float.parseFloat(request.getParameter("first-operand"));
        } catch (NumberFormatException e) {
            isValidInput = false;
            request.setAttribute("firstOperandError", "Phải là chữ số !");
        }
        float second=0;
        try {
            second = Float.parseFloat(request.getParameter("second-operand"));
        } catch (NumberFormatException e) {
            isValidInput = false;
            request.setAttribute("secondOperandError", "Phải là chữ số !");
        }
        if (!isValidInput) {
            request.setAttribute("firstOperand", request.getParameter("first-operand"));
            request.setAttribute("secondOperand", request.getParameter("second-operand"));
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        char operator = request.getParameter("operator").charAt(0);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result: </h1>");
        try {
            float result = CalculatorService.calculate(first, second, operator);
            writer.println(first + " " + operator + " " + second + "= " + result);
        } catch (Exception e) {
            writer.println("Error: " + e.getMessage());
        }
        writer.println("</html>");
    }

}
