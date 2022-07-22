package com.nayeon.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/upload2.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MultiUploadServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		String savePath = "upload";
		int ufsl = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		ServletContext con = getServletContext();
		String ufp = con.getRealPath(savePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, ufp, ufsl, encType, new DefaultFileRenamePolicy()
			);
			Enumeration files = multi.getFileNames();
			
			/*
			int i = 1;
			*/
			
	         while (files.hasMoreElements()) {
	             String file = (String) files.nextElement();
	             String file_name = multi.getFilesystemName(file);
	             // 중복된 파일을 업로드할 경우 파일명이 바뀐다.
	             String ori_file_name = multi.getOriginalFileName(file);
	             
	             map.put(file_name,ori_file_name);
	             request.setAttribute("map", map);
				
				/*
				request.setAttribute("uploadFile0" + i, file_name);
				request.setAttribute("uploadFile_origin0" + i, file_origin_name);
				
				i++;
				*/
				
				/*
				out.print("<br>업로드된 파일명: " + file_name);
				out.print("<br>원본 파일명: " + file_origin_name);
				out.print("<hr>");
				*/
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.getStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("fileList.jsp");
		rd.forward(request, response);
		
	}

}
