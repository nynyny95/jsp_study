<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<%@ page import="com.oreilly.servlet.ServletUtils" %>

<%
	String fileName = request.getParameter("file_name");
String savePath = "upload"; //저장위치의 폴더명
ServletContext context = getServletContext();
String sDownloadPath = context.getRealPath(savePath); //upload폴더의 실제경로를 가져온다
String sFilePath = sDownloadPath + "\\" + fileName; //그 경로에 +다운받을 파일이름을 붙임

byte b[] = new byte[4096];
File oFile = new File(sFilePath);

//stream을 통해서..
FileInputStream in = new FileInputStream(sFilePath); //읽어올 파일명가져오기

String sMimeType = getServletContext().getMimeType(sFilePath); 
System.out.println("sMimeType >>> " + sMimeType);

	
	if (sMimeType == null) {
		sMimeType = "application/octet-stream";		// 8비트 형식으로 처리
	}
	
	response.setContentType(sMimeType);
	
	String sEncoding = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");		// 한글 깨짐 방지용 인코딩 작업!
	
	response.setHeader("Content-Disposition", "attachment; filename= " + sEncoding);	// 파일 다운로드 창 실행!
	
	ServletOutputStream out2 = response.getOutputStream();
	
	int numRead;
	
	// 업로드 된 데이터의 정보가 없어지는 시기(-1 이 되는 시기)까지 반복!
	while ((numRead = in.read(b, 0, b.length)) != -1) {
		out2.write(b, 0, numRead);
	}
	
	out2.flush();
	out2.close();
	in.close();
%>