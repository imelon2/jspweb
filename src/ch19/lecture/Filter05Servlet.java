package ch19.lecture;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Filter05Servlet
 */
@WebServlet("/filter05")
public class Filter05Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Filter05Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		executeJDBC();
		
		response.getWriter().print("<h1>jdbc</h>");
		
	}
	
	private void executeJDBC() {
		//연결
		
		String url ="3.36.67.156";
		String user ="root";
		String password ="wnddkdwjdqhcjfl1";
		
		Connection con = DriverManager.getConnection(url);
		String sql ="SELECT CustomerName FROM Customers WHERE CustomerID = 1";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String name = request.getParameter("name");
		String greeting = name + "님 반갑슈다잉";
		
		response.getWriter().print(greeting);
	}

}
