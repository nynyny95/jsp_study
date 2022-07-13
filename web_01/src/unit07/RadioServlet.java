package unit07;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RadioServlet")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RadioServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String gender = request.getParameter("gender");
		String chk_mail = request.getParameter("chk_mail");
		String content = request.getParameter("content");
		String[] items = request.getParameterValues("item");
		String job = request.getParameter("job");
		String[] interestes = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<hr>");
		
		out.println("성 별: <b>");
		out.println(gender);
		
		out.println("</b><br>메일 정보 수신 여부: <b>");
		out.println(chk_mail);

		out.println("</b><br>선택한 악세사리 항목: <b>");
		if (items == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			// 배열 값 모두 출력을 위한 향상된 for문 사용
			for (String item : items) {
				out.println(item + "  ");
			}
		}
		
		out.println("</b><br>선택한 직업 항목: <b>");
		out.println(job);
		
		out.println("</b><br>선택한 관심분야 항목: <b>");
		if (interestes == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			for (String interest : interestes) {
				out.println(interest + "  ");
			}
		}
		
		out.println("</b><br>가입 인사: <b><pre>");
		out.println(content);
		
		out.println("</pre></b><a href='javascript:history.go(-1)'>다시</a>");
		out.print("</body></html>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
