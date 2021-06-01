package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ch14.bean.Customer;
import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC17Servlet
 */
@WebServlet("/JDBC17Servlet")
public class JDBC17Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC17Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		
		Employee emp = getEmployee(Integer.parseInt(id));
		
		request.setAttribute("employee", emp);
		
		String path = "/ch14/jdbc17.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	private Employee getEmployee(int id) {

		Employee emp = null;

		String sql = "SELECT EmployeeID,"
				+ " LastName,"
				+ " FirstName,"
				+ " Notes"
				+ " FROM Employees"
				+ " WHERE EmployeeID = ?";

		String url = "jdbc:mysql://3.36.67.156/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);

			// ? (파라미터)에 값 할당
			stmt.setInt(1, id);

			// 쿼리 실행, 결과(ResultSet) 리턴
			rs = stmt.executeQuery();

			if (rs.next()) {
				emp = new Employee();
				emp.setId(id);
				emp.setLastName(rs.getString(2));
				emp.setFirstName(rs.getString(3));
				emp.setNotes(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		return emp;
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// request 파라미터 수집,
		// Cutomer 객체 완성
		String id = request.getParameter("id");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String notes = request.getParameter("notes");
		
		Employee emp = new Employee();
		emp.setId(Integer.parseInt(id));
		emp.setFirstName(firstName);
		emp.setLastName(lastName);
		emp.setNotes(notes);
		
		updateEmployee(emp);
		
		
		
		doGet(request, response);
	}
	private void updateEmployee(Employee emp) {

		String sql = " UPDATE Employees"
					+" SET"
					+" FirstName = ?,"
					+" LastName = ?,"
					+" Notes = ?"
					+" WHERE EmployeeID = ?";

		String url = "jdbc:mysql://3.36.67.156/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);

			// ? (파라미터)에 값 할당
			stmt.setString(1, emp.getFirstName());
			stmt.setString(2, emp.getLastName());
			stmt.setString(3, emp.getNotes());
			stmt.setInt(4, emp.getId());
			// 쿼리 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("수정 성공");
			} else {
				System.out.println("수정 실패");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}

}

