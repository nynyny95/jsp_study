package unit11;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestLoginServlet")
public class TestLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestLoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		String userNum = request.getParameter("userNum");
		String userNum2 = request.getParameter("userNum2");
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String userEmail = request.getParameter("userEmail");
		String userEmail2 = request.getParameter("userEmail2");
		String zipNo = request.getParameter("zipNo");
		String roadAddrPart1 = request.getParameter("roadAddrPart1");
		String addrDetail = request.getParameter("addrDetail");
		String roadAddrPart2 = request.getParameter("roadAddrPart2");
		String userCall = request.getParameter("userCall");
		String userCall2 = request.getParameter("userCall2");
		String userCall3 = request.getParameter("userCall3");
		String userJob = request.getParameter("userJob");
		String userRadio = request.getParameter("userRadio");
		String[] userInters = request.getParameterValues("userInter");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<html><body>");
		out.println("당신이 입력한 정보입니다.<br><hr><br>");
		
		out.println("이름: <b>");
		out.println(userName);
		
		out.println("</b><br>주민등록번호: <b>");
		out.println(userNum + "<b>-</b>" + userNum2);
		
		out.println("</b><br>아이디: <b>");
		out.println(userId);
		
		out.println("</b><br>비밀번호: <b>");
		out.println(userPwd);
		
		out.println("</b><br>이메일: <b>");
		out.println(userEmail + "@" + userEmail2);
		
		out.println("</b><br>주소: <b>");
		out.println("(" + zipNo + ") " + roadAddrPart1 + " " + addrDetail+ " " + roadAddrPart2);
		
		out.println("</b><br>핸드폰번호: <b>");
		out.println(userCall + "<b>-</b>" + userCall2 + "<b>-</b>" + userCall3);
		
		out.println("</b><br>직업: <b>");
		if (userJob.equals("1")) {
			out.println("선택한 항목이 없습니다.");
		} else {
			out.println(userJob);
		}
		
		out.println("</b><br>메일/SMS 정보 수신: <b>");
		out.println(userRadio);
		
		out.println("</b><br>관심분야: <b>");
		if (userInters == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			for (String interest : userInters) {
				out.println(interest + "  ");
			}
		}
		
		out.println("</b><br><a href='javascript:history.go(-1)'>다시</a>");
		
		out.print("</body></html>");
		out.close();
	}

}
