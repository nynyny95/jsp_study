<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="javax.naming.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "insert into product values(?, ?, ?, ?, ?, ?)";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나연샵 - 제품 추가 완료</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String pid = request.getParameter("pid");
	    String pname = request.getParameter("pname");
	    String punitPrice = request.getParameter("punitPrice");
	    String pdescription = request.getParameter("pdescription");
	    String pcategory = request.getParameter("pcategory");
	    String pmanufacturer = request.getParameter("pmanufacturer");
		
	    try {
		    Context init = new InitialContext();
		    DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setInt(3, Integer.parseInt(punitPrice));
			pstmt.setString(4, pdescription);
			pstmt.setString(5, pcategory);
			pstmt.setString(6, pmanufacturer);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	%>
	<h3>제품 등록 성공</h3>
	<a href="02_allProduct.jsp"> 제품 전체 목록 보기 </a>
</body>
</html>