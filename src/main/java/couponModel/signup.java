package couponModel;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DB;

/**
 * Servlet implementation class signup
 */
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
		String u= request.getParameter("username");
		System.out.println(u);
		String email= request.getParameter("email");
		String p= request.getParameter("password");
		String p2= request.getParameter("password_confirm");
		String StoreID="12";
		Connection c=null;
		if( u!=null && p!=null && email!= null && p2!=null ){
			try {
			PreparedStatement stmt = null;
			ResultSet rs = null;
			DB database = new DB();
			c= database.connect();
			String sql="INSERT INTO user (username, password, UorAorC, storeID, email) Values (?,?,?,?,?)";
			stmt = (PreparedStatement) c.prepareStatement(sql);
			stmt.setString(1, u);
			stmt.setString(2, p);
			stmt.setString(3, "U");
			stmt.setString(4, StoreID);
			stmt.setString(5, email);
			stmt.executeUpdate();
			response.sendRedirect("CWAhome.jsp");
			}
			//else{
				//response.sendRedirect("HomeCoupon.jsp");}
			//}
			catch(Exception e) {
			    System.out.println("error while signing up: "+e.getMessage());
			  } 
			
	}
	
	}

}
