package servlets;

import java.io.IOException;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.transaction.UserTransaction;

import entities.ProductBean;
import entities.ProductDAOImpl;
import jdbc.UserDAOImp;

/**
 * Servlet implementation class editProductServlet
 */
@WebServlet("/editProduct")
@MultipartConfig
public class EditProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletConfig config;
	
	ProductDAOImpl productDAO = new ProductDAOImpl("online_shop");
	
	UserDAOImp userDAO = new UserDAOImp();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductBean product = productDAO.findByID(Integer.parseInt(request.getParameter("idProduct")));
		request.setAttribute("product", product);
		
		RequestDispatcher rd = request.getRequestDispatcher("/editProduct.jsp");
		rd.forward(request, response);		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductBean product = productDAO.findByID(Integer.parseInt(request.getParameter("idProduct")));
		
		String productName = request.getParameter("productName");
		int cattegoryProduct = Integer.parseInt(request.getParameter("cattegoryProduct"));
		String description = request.getParameter("description");
		double price = Double.parseDouble(request.getParameter("price"));
		Part filePart = request.getPart("image");		
		
		HttpSession session = request.getSession(true);
		Object sellerObject = session.getAttribute("user_id");
		if(sellerObject == null) {
			request.setAttribute("errorMsg", "There is no user in the session!!");			
			RequestDispatcher rd = request.getRequestDispatcher("/errorPage.jsp");
			rd.forward(request, response);
		}
		int seller = (int) sellerObject;
		
		if(userDAO.isAdmin(seller)) {
			product.setSeller(seller);
		} else {
			product.setSeller(product.getSeller());
		}
		product.setId(Integer.parseInt(request.getParameter("idProduct")));
		product.setName(productName);
		product.setPrice(price);
		product.setCategory(cattegoryProduct);
		product.setDescription(description);
		if(filePart.getSize() != 0) {
			byte[] data = new byte[(int) filePart.getSize()];
		    filePart.getInputStream().read(data, 0, data.length);
		    product.setImage(data);
		}
		try {
			productDAO.update(product);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(userDAO.isAdmin(seller)) {
			response.sendRedirect("/online_shop/AdminProductsServlet");
		} else {
			response.sendRedirect("/online_shop/dashboard");
		}
		//RequestDispatcher rd = request.getRequestDispatcher("/dashboard");
		//rd.forward(request, response);
		
	}

}
