<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%
   Connection conn = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <%
    try {
         Context init = new InitialContext();
         DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/OracleDB");
        conn = ds.getConnection();
        out.println("DBCP 연결 성공");
       
     } catch (Exception e) {
        e.printStackTrace();
     } finally {
        try {
          
           if (conn != null) {
              conn.close();
           }
        } catch (Exception e) {
           e.printStackTrace();
        }
     }      
   %>
</body>
</html>