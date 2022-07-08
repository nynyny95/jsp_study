package unit06;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/InfoServlet")
public class InfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<br>");
		out.println("이 름: ");
		out.println(name);
		out.println("<br>주 소: ");
		out.println(addr);
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</html></body>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 이미 만든 메소드를 활용하여 내용 그대로 사용!
		request.setCharacterEncoding("UTF-8");
		doGet(request,response);
		
		// 이렇게 먼저 인코딩 코드를 상단에 먼저 입력해줘야 함!!!!!
		// request.setCharacterEncoding("UTF-8");
		// 작성 순서에 따라 한글의 깨짐 현상이 일어날 수 있다.
	}

}
