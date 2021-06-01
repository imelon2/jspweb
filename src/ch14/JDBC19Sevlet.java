package ch14;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Employee;
import ch14.dao.CustomersDAO;
import ch14.dao.EmployeesDAO;

/**
 * Servlet implementation class JDBC19Sevlet
 */
@WebServlet("/JDBC19Sevlet")
public class JDBC19Sevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC19Sevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		EmployeesDAO empDao = new EmployeesDAO();
		
		Employee emp = empDao.getEmployee(Integer.parseInt(id));
		request.setAttribute("emp", emp);
		
		String path = "/ch14/jdbc19.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		EmployeesDAO empDAO = new EmployeesDAO();
		
		empDAO.deleteEmployee(Integer.parseInt(id));
		
		doGet(request, response);
	}

}
