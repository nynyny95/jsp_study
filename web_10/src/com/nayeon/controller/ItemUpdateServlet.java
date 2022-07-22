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

@WebServlet("/itemUpdate.do")
public class ItemUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ItemUpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		ItemDAO iDao = ItemDAO.getInstance();
		ItemVO iVo = iDao.selectItemByCode(code);
		
		request.setAttribute("item", iVo);
		RequestDispatcher disp = request.getRequestDispatcher("item/itemUpdate.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		ServletContext cont = getServletContext();
		String path = cont.getRealPath("upload");
		String enType = "UTF-8";
		int sizeLimit = 20 * 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, path, sizeLimit, enType, new DefaultFileRenamePolicy());
		
		String code = multi.getParameter("code");
		String iname = multi.getParameter("iname");
		int price = Integer.parseInt(multi.getParameter("price"));
		String description = multi.getParameter("description");
		String pictureurl = multi.getFilesystemName("pictureurl");
		if (pictureurl == null) {
			pictureurl = multi.getParameter("nonmakeImg");
		}
		
		ItemVO iVo = new ItemVO();
		iVo.setCode(Integer.parseInt(code));
		iVo.setIname(iname);
		iVo.setPrice(price);
		iVo.setDescription(description);
		iVo.setPictureurl(pictureurl);
		
		ItemDAO iDao = ItemDAO.getInstance();
		iDao.updateItem(iVo);
		
		response.sendRedirect("itemList.do");
	}

}
