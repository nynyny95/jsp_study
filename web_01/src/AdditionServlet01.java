

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 웹 서블릿을 실행할 기본값
@WebServlet("/AdditionServlet01")
//구조는 클래스 형식, extends HttpServlet을 반드시 해야함!
public class AdditionServlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//기본 생성자 - 역할을 하던 안하던 반드시 있어야 함!
    public AdditionServlet01() {
        super();
        
    }
    
    // doGet이나 doPost 중 하나는 반드시 있어야함
    // 타입 HttpServletRequest와 HttpServletResponse가 반드시 정의되어있어야함
    
    // Get 방식이란?
    // '/AdditionServlet01'를 통해 요청하는 것! -> 'localhost:9999/web_01/AdditionServlet01' 주소값을 입력하여 요청하는 것
    // 보안 노출이 좀 높으나 다이렉트 전달 가능
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// 웹 브라우저 출력을 위한 PrintWriter 객체 확보
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		int num1 = 20;
		int num2 = 10;
		int add = num1 + num2;
		PrintWriter out = response.getWriter();
		// 아래 코드가 합쳐져서 html코드가 된다!
		// 톰캣서버는 이를 html코드로 변환해줌
		out.println("<html><head><title>Additon</title></head>");
		out.println("<body>");
		out.println(num1 + "+" + num2 + "=" + add);
		out.println("</body>");
		out.println("</html>");
	}
	
	// Post 방식이란?
	// 주소창에 순수한 url만 넘어가는 것으로 코드 노출 위험이 적음(보안적 측면!)
	// 캡슐화로 인한 보안적 측면이 좋지만 느린 처리속도
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
