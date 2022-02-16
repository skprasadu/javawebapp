package com.hcl.javawebapp.webapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

@WebServlet(name="example-servlet", urlPatterns = { "/*" })
public class ExampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Log log = LogFactory.getLog(ExampleServlet.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if (log.isTraceEnabled())
			log.trace(String.format("doGet(%s, %s)", req, resp));
		resp.setContentType("text/plain");
		resp.getWriter().write(req.getPathInfo());
		 System.out.println("Get method of Welcome Servlet");
		 PrintWriter writer = resp.getWriter();
	        writer.println("Hello");
		
	}
}
