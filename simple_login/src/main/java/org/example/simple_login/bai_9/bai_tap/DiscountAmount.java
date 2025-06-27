package org.example.simple_login.bai_9.bai_tap;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="disCountAmount",value = "/display-discount")
public class DiscountAmount extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws SecurityException, IOException{
        double discountPercent = Double.parseDouble(request.getParameter("discountPercent"));
        double listPrice =Double.parseDouble(request.getParameter("listPrice"));
        String description = request.getParameter("description");
        double disCount= listPrice * discountPercent * 0.01;
        PrintWriter writer = response.getWriter();
        writer.println("<h1>ket qua la :</h1>"+disCount);


    }

}
