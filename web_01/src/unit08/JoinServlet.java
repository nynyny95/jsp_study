package unit08;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JoinServlet")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public JoinServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String name = request.getParameter("name");
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String addrnum = request.getParameter("addrnum");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String cell = request.getParameter("cell");
		String job = request.getParameter("job");
		String radio = request.getParameter("radio");
		String[] interestes = request.getParameterValues("interest");
		
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<hr>");
		
		out.println("이 름: <b>");
		out.println(name);
		
		out.println("</b><br>주민등록번호: <b>");
		out.println(number1 + "-" + number2);

		out.println("</b><br>아이디: <b>");
		out.println(id);
		
		out.println("</b><br>비밀번호: <b>");
		out.println(pw);
		
		out.println("</b><br>이메일: <b>");
		out.println(email1 + "@" + email2);
		
		out.println("</b><br>우편번호: <b>");
		out.println(addrnum);
		
		out.println("</b><br>주소: <b>");
		out.println(addr1 + " " + addr2);
		
		out.println("</b><br>핸드폰 번호: <b>");
		out.println(cell);
		
		out.println("</b><br>직업: <b>");
		out.println(job);
		
		out.println("</b><br>메일/sms 정보 수신 여부: <b>");
		out.println(radio);
		
		out.println("</b><br>관심분야: <b>");
		if (interestes == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			for (String interest : interestes) {
				out.println(interest + "  ");
			}
		}
		
		out.println("</b><br><br><a href='javascript:history.go(-1)'>뒤로 가기</a>");
		out.print("</body></html>");
		out.close();
	}

}

// 이메일 처리방법(교재)
/*

String email = request.getParameter("email");

if (request.getParameter("email_dns").trim() == "") {
	email += "@" + request.getParameter("emailaddr")
} else {
	email += "@" + request.getParameter("email_dns")
}

out.println(email)

*/