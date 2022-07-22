package com.nayeon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nayeon.dao.ItemDAO;
import com.nayeon.dto.ItemVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/itemWrite.do")
public class itemWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public itemWriteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dis = request.getRequestDispatcher("item/itemWrite.jsp");
		dis.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext cont = getServletContext();
		String path = cont.getRealPath("upload");
		String enType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, enType, new DefaultFileRenamePolicy());
		
		String iname = multi.getParameter("iname");
		int price = Integer.parseInt(multi.getParameter("price"));
		String pictureurl = multi.getFilesystemName("pictureurl");
		String description = multi.getParameter("description");
		
		ItemVO iVo = new ItemVO();
		iVo.setIname(iname);
		iVo.setPrice(price);
		iVo.setPictureurl(pictureurl);
		iVo.setDescription(description);
		
		ItemDAO iDao = ItemDAO.getInstance();
		iDao.insertItem(iVo);
		
		response.sendRedirect("itemList.do");
	}

}
