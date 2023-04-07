package app;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Apps.Products;

/**
 * Servlet implementation class removeservlet
 */
@WebServlet("/removeservlet")
public class removeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public removeservlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cpid = Integer.parseInt(request.getParameter("idc")) ;
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = super.getServletContext().getRequestDispatcher("/Cart.jsp");
		ArrayList<Products> cart = (ArrayList<Products>) session.getAttribute("cartsession");
		Iterator<Products> iter = cart.iterator();
		//boolean isfound = false;
		while (iter.hasNext()) {
			Products a = iter.next();
			if(a.getId()==cpid) {
				int cq = a.getQunt();
   				if(cq==1) {
   					cart.remove(a);
   					session.setAttribute("cartsession", cart);
   					
   					break;
   				}else {
   					a.setQunt(cq-1);
   					session.setAttribute("cartsession", cart);
   					
   					break;
   				}
				
			}
				
		}
		request.setAttribute("Messagec", "Removed from cart...");
		dispatcher.forward(request, response);
		
		
	}

}
