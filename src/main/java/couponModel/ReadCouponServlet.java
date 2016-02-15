package couponModel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;

import com.coupon.Coupon;


/**
 * Servlet implementation class ReadCouponServlet
 */
public class ReadCouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReadCouponServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SID=request.getParameter("ID");
		if(SID != null && SID !=""){
		int IID= Integer.parseInt(request.getParameter("ID")); //error handling if ID is null, how to?
	//	PrintWriter out = response.getWriter();//chi kar mikone?
		Client client= ClientBuilder.newClient();
		Coupon cc=client.target("http://localhost:8080/coupon-webservice/webapi/myresource/getcoupons").queryParam("var1",IID).request().get(Coupon.class);
		if(cc!=null){
		request.setAttribute("id", SID);
		request.setAttribute("message", "Below are the requested information"); // Will be available as ${message}
		request.setAttribute("in",cc.Itemname);
		if(cc.CouponType==1){
		request.setAttribute("dis",cc.Discount+"%");}
		else{
			if(cc.CouponType==2)
				request.setAttribute("dis","buy"+cc.Discount+"get one free");
			if(cc.CouponType==3)
				request.setAttribute("dis",cc.Discount+"$ off");
		}
		request.setAttribute("ti1", cc.getValidTime1());//dateFormat.format(Cdate2));
		request.setAttribute("ti2", cc.getValidTime2());
		request.getRequestDispatcher("CWACreadcoupon.jsp").forward(request,response);   
		}
	
		else{
			request.setAttribute("id", SID);
			request.setAttribute("message", "There is no available coupon with this ID. ");
			request.getRequestDispatcher("CWACreadcoupon.jsp").forward(request,response);;
		}
		}
		else {
	//response.getWriter().write("enter the ID");	
			response.sendRedirect("CWACreadCoupon.jsp");
	}
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
