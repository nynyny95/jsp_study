package com.nayeon.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 두 개 임포트 먼저!
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/Upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// 폴더명이 달라질 수 있으므로 변수 선언해두기
		String savePath = "upload";
		// 한번에 넣을 수 있는 파일크기
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String endType = "UTF-8";
		ServletContext slct = getServletContext();
		String uploadFilePath = slct.getRealPath(savePath);
		
		System.out.print("서버상의 실제 디렉토리: ");
		System.out.println(uploadFilePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, uploadFilePath, uploadFileSizeLimit, endType, new DefaultFileRenamePolicy()
			);
			
			String filename = multi.getFilesystemName("uploadFile");
			String filename2 = multi.getOriginalFileName("uploadFile");
			if (filename == null) {
				System.out.println("파일 업로드 실패!");
			} else {
				out.println("<br>글쓴이: " + multi.getParameter("name"));
				out.println("<br>제	목: " + multi.getParameter("title"));
				out.println("<br>파일명(부여된 이름): " + filename);
				out.println("<br>파일명(실제 이름): " + filename2);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.getStackTrace();
		}
	}

}
