package org.example.calculator.controller;

import org.example.calculator.service.CalculatorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="CalculatorServlet" ,urlPatterns = "/calculate")
public class CalculatorController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float first = Float.parseFloat(request.getParameter("first-operand"));
        float second = Float.parseFloat(request.getParameter("second-operand"));
        char operator = request.getParameter("operator").charAt(0);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result: </h1>");
        try {
            float result = CalculatorService.calculate(first,second,operator);
            writer.println(first+ " " + operator+ " "+ second+ "= "+result);
        }catch (Exception e){
            writer.println("Error: " + e.getMessage());
        }
        writer.println("</html>");
    }

}
