package unit04;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 어노테이션에 정의된 부분이 중요! 클래스명이 아님!
@WebServlet("/MethodServlet")
public class MethodServlett extends HttpServlet {
   private static final long serialVersionUID = 1L;

   public MethodServlett() {
        super();
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.print("<h1>get 방식으로 처리됨</h1>");
      out.close();
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.print("<h1>post 방식으로 처리됨</h1>");
      out.close();
   }

}
