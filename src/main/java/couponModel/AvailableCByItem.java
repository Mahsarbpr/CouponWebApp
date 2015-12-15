package couponModel;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.GenericType;

import com.coupon.Coupon;

/**
 * Servlet implementation class AvailableCByItem
 */
public class AvailableCByItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AvailableCByItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String SSBI=request.getParameter("SBI");
		Client C= ClientBuilder.newClient();
		List<Coupon> Co=new ArrayList<Coupon>();
		//List<Coupon> Co2=new ArrayList<Coupon>();
		//Coupon Co1=new Coupon();
		if(SSBI != null && SSBI != ""){
			try{
				Co=C.target("http://localhost:8080/coupon-webservice/webapi/myresource/FindCouponForItem").queryParam("var", SSBI).request().get(new GenericType<List<Coupon>>(){});
				System.out.println(Co);
				//request.setAttribute("webURLIN", Co); 
				//RequestDispatcher rd = getServletContext().getRequestDispatcher("/SearchBItem.jsp");  
				//rd.forward(request, response);
			}
			catch(Exception e){
				System.out.println("Error dariiiim");
			}
		}
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
