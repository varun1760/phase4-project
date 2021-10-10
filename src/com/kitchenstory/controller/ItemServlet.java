package com.kitchenstory.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitchenstory.dbutilities.ItemDAO;
import com.kitchenstory.utilities.Items;

/**
 * Servlet implementation class ItemServlet
 */
@WebServlet("/")
public class ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ItemDAO itemDAO;
	
	public void init() {
		itemDAO = new ItemDAO();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		try {
			switch(action) {
			case "/new":
				showNewForm(request, response);
				break;
			case "/insert":
				insertItem(request, response);
				break;
			case "/delete":
				deleteItem(request, response);
				break;
			case "/edit":
				showEditForm(request, response);
				break;
			case "/update":
				updateItem(request, response);
				break;
			default:
				listItem(request, response);
				break;
			}
		} catch(SQLException e) {
			throw new ServletException(e);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	private void listItem(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		List<Items> listItem = itemDAO.selectAllitems();
		request.setAttribute("listItem", listItem);
		RequestDispatcher dispatcher = request.getRequestDispatcher("itemList.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("itemForm.jsp");
		dispatcher.forward(request, response);
	}
	
	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Items existingItem = itemDAO.selectItem(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("itemForm.jsp");
		request.setAttribute("item", existingItem);
		dispatcher.forward(request, response);
	}
	
	private void insertItem(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));

		Items newItem = new Items(id, name, price);
		itemDAO.insertItem(newItem);
		response.sendRedirect("list");
	}
	
	private void updateItem(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException  {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		float price = Float.parseFloat(request.getParameter("price"));

		Items menu = new Items(id, name, price);
		itemDAO.updateItem(menu);
		response.sendRedirect("list");
	}
	
	private void deleteItem(HttpServletRequest request, HttpServletResponse response)
			throws IOException, SQLException {
		int id = Integer.parseInt(request.getParameter("id"));
		itemDAO.deleteItem(id);
		response.sendRedirect("list");
	}
}
