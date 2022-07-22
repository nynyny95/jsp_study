package com.nayeon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nayeon.dao.ItemDAO;
import com.nayeon.dto.ItemVO;

@WebServlet("/itemDelete.do")
public class ItemDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ItemDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		ItemDAO iDao = ItemDAO.getInstance();
		ItemVO iVo = iDao.selectItemByCode(code);
		
		request.setAttribute("item", iVo);
		RequestDispatcher disp = request.getRequestDispatcher("item/itemDelete.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = request.getParameter("code");
		
		ItemDAO iDao = ItemDAO.getInstance();
		iDao.deleteItem(code);
		
		response.sendRedirect("itemList.do");
	}

}
