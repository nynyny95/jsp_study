<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
       Connection conn = null;
       Statement stmt = null;
       ResultSet rs = null;
       
       String url = "jdbc:oracle:thin:@localhost:1521:orcl";
       String uid = "scott";
       String pass = "tiger";
       String sql = "select * from product";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나연샵 - 전체 상품 조회하기</title>
</head>
<body>
   <table width = '1000' border="1">
      <tr>
         <th>제품번호</th><th>제품명</th><th>가격</th><th>제품설명</th>
         <th>카테고리</th><th>제조사</th>
      </tr>
      <%
         try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection(url, uid, pass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            while(rs.next()) {
               out.println("<tr>");
               out.println("<td>"+rs.getString("pid")+"</td>");
               out.println("<td>"+rs.getString("pname")+"</td>");
               out.println("<td>"+rs.getInt("punitPrice")+"</td>");
               out.println("<td>"+rs.getString("pdescription")+"</td>");
               out.println("<td>"+rs.getString("pcategory")+"</td>");
               out.println("<td>"+rs.getString("pmanufacturer")+"</td>");
               out.println("</tr>");
            }
         }catch(Exception e) {
            e.printStackTrace();
         }finally {
            try {
               if(rs != null) rs.close();
               if(stmt != null) stmt.close();
               if(conn != null) conn.close();
            }catch(Exception e) {
               e.printStackTrace();
            }
         }
      %>
   </table>
</body>
</html>