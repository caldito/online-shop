package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.ProductBean;
import entities.ProductDAOImpl;

/**
 * Servlet implementation class CatalogServlet
 */
@WebServlet("/Catalog")
public class CatalogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;

	ProductBean productBean = new ProductBean();
	
	ProductDAOImpl productDAO = new ProductDAOImpl("online_shop");
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CatalogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List results;
		
		HttpSession session = request.getSession(true);
		Object sellerObject = session.getAttribute("user_id");
		if(sellerObject == null) {
			request.setAttribute("errorMsg", "There is no user in the session!!");			
			RequestDispatcher rd = request.getRequestDispatcher("/errorPage.jsp");
			rd.forward(request, response);
		}
		int seller = (int) sellerObject;
        
		if(request.getParameter("sold") == null || request.getParameter("sold").equals("false")){
			results = productDAO.getProductsStatusBySeller(seller, 0);
			request.setAttribute("sold", "false");
		} else {
			results = productDAO.getProductsStatusBySeller(seller, 1);
			request.setAttribute("sold", "true");
		}
		request.setAttribute("products", results);
		
		RequestDispatcher rd = request.getRequestDispatcher("/catalog.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
