
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 声明一个集合类，用于保存错误信息
		List<String> errors = new ArrayList<String>();
		//
		PersonDAO personDAO = null;
		// 要跳转的页面
		String path = null;
		// 接收请求的内容
		String id = request.getParameter("uname");
		String password = request.getParameter("upassword");
		// 预处理(获取用户类型）
		try {
			if (id.subSequence(0, 2).equals("02")) {// 教师
				path = "TeacherHome.jsp";
				personDAO = new TeacherDAO();
			} else if (id.subSequence(0, 2).equals("01")) {// 学生
				path = "StudentHome.jsp";
				// personDAO = new ;
			} else if ("admin".equals(id)) {
				path = "AdminHome.jsp";
				request.getRequestDispatcher(path).forward(request, response);
				return;
			}else {
				path = "Login.jsp";
				errors.add("错误的用户ID及密码！");
				request.setAttribute("errors", errors);
			}
		} catch (StringIndexOutOfBoundsException e) {
			System.out.println("StringIndexOutOfBounds !");
		} catch (NullPointerException e) {
			System.out.println(" NullPointerException !");
		}
		
		// 判断+重定向
		if (personDAO != null && personDAO.canLogin(id, password)) {// 学生或老师验证
			request.getRequestDispatcher(path).forward(request, response);
		} else// 非法用户
		{
			path = "Login.jsp";
			errors.add("错误的用户ID及密码！");
			request.setAttribute("errors", errors);
			request.getRequestDispatcher(path).forward(request, response);
		}
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
