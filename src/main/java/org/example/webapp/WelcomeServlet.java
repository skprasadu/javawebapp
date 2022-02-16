package org.example.webapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
    name="WelcomeServlet",
    description="Servlet with Annotation",
    urlPatterns={"/WelcomeServlet","/WelcomeServlet"}
    )
public class WelcomeServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println("Get method of Welcome Servlet");
        PrintWriter writer = resp.getWriter();
        writer.println("Hello");
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        System.out.println("Post method of Welcome Servlet");
        PrintWriter writer = resp.getWriter();
        writer.println("Hello");
    }
}