package couponModel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.coupon.Coupon;

/**
 * Servlet implementation class deleteCouponServlet
 */
public class deleteCouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteCouponServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
    
    //http://websystique.com/springmvc/spring-mvc-4-restful-web-services-crud-example-resttemplate/
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String SID=request.getParameter("ID");
		if(SID != null && SID !=""){
		//int IID= Integer.parseInt(request.getParameter("ID")); //error handling if ID is null, how to?
	//	PrintWriter out = response.getWriter();//chi kar mikone?
		Client client= ClientBuilder.newClient();
		Response Response = client.target("http://localhost:8080/coupon-webservice/webapi/myresource/DeleteCoupon").path(SID).request(MediaType.APPLICATION_JSON).delete();
		//if(Response)
		
		request.setAttribute("message", "Coupon with "+SID+" id is deleted.");
		request.getRequestDispatcher("CWAdelcoupon.jsp").forward(request,response);;
		//response.sendRedirect("CWAdelcoupon.jsp");
		}
		else {
	//response.getWriter().write("enter the ID");	
			response.sendRedirect("CWAdelCoupon.jsp");
	}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
