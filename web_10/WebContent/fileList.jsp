<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>업로드 파일 리스트</h1>
   <%
      Map<String , String> map = (HashMap<String , String>)request.getAttribute("map");
      Iterator<String> keys = map.keySet().iterator();
      
      while(keys.hasNext()){
         String systemfilename = keys.next();
         String orginfilename = map.get(systemfilename);
   %>
      <p>
         <a href="file_down.jsp?file_name=<%=systemfilename %>"><%=orginfilename %></a>
      </p>
      
   <% }%>   
   
</body>
</html>
<%--
	업로드된 파일명: ${uploadFile01}<br>
	원본 파일명: ${uploadFile_origin01}
	<hr>
	업로드된 파일명: ${uploadFile02}<br>
	원본 파일명: ${uploadFile_origin02}
	<hr>
	업로드된 파일명: ${uploadFile03}<br>
	원본 파일명: ${uploadFile_origin03}
	<hr>
--%>

<%--
<%
	int i = 1;
	while () {
%>
		업로드된 파일명: ${uploadFile0<% i} %><br>
		원본 파일명: ${uploadFile_origin0<% i} %>
		<hr>
		
		<% i++;
	}
%>
--%>

<%--       while(keys.hasNext()) {
         String key = keys.next();
         String value = map.get(key);
         
               업로드된 파일명 : <%=key %><br>
      원본 파일명 : <%=value %>
         
          --%>