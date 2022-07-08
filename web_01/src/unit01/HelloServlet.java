package unit01;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       

    public HelloServlet() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      response.setContentType("text/html");
	   // 영어권을 제외한 언어 처리(한글 등)를 위해 charset=UTF-8 추가
      response.setContentType("text/html;charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.print("<html><body><h1>");
      out.print("Hello Servlet");
      // 한글은 깨짐 현상이 나올 수 있음!
      // 출력결과: ??, ???!
      out.print("\t" + "안녕, 서블릿!");
      out.print("</h1></body></html>");
      out.close();
   }

}