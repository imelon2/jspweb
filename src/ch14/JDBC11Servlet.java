package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;
import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC11Servlet
 */
@WebServlet("/JDBC11Servlet")
public class JDBC11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC11Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Employee emp = executeJDBC(id);
		request.setAttribute("emp", emp);
		
		
		String path = "/ch14/jdbc11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private Employee executeJDBC(String id) {
		
		Employee emp = null;
		
		String sql = "select * from Employees" + 
				 " where EmployeeID =" + id;

		String url = "jdbc:mysql://3.36.67.156/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {

			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			// 연결
			con = DriverManager.getConnection(url, user, password);

			// statement 생성
			stmt = con.createStatement();

			// 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 결과 탐색
			if (rs.next()) {
				Integer num = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				
				emp = new Employee();
				emp.setFirstName(firstName);
				emp.setLastName(lastName);
				emp.setNum(num);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return emp;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
