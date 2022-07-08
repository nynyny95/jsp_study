package unit05;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ParamServlet")
public class ParamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ParamServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		// 첫번째 매개변수를 활용하여 메소드 호출, 이를 변수에 담기!
		String id = request.getParameter("id");
		// 문자열로 넘어온 값을 인트형태로 형변환
		int age = Integer.parseInt(request.getParameter("age"));
		
		//	주소를 확인하면 "http://localhost:9999/web_01/ParamServlet?id=rlaskdusdit&age=27" 형식으로 넘어감 -> get방식!
		// 개인정보가 노출될 경우 후킹(url에 노출된 정보를 잡아올려 정보를 빼내는 것)을 당할 수 있으므로 보안 취약!
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<br>");
		out.println("아 이 디: ");
		out.println(id);
		out.println("<br> 나 이: ");
		out.println(age);
		//	이전 페이지로 돌아가도록 해주는 소스코드	
		out.println("<br><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}

}
