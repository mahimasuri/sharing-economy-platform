package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Vendor_Filters.Vendor_details;
import v_model.VendorInfo;

public class Economy extends HttpServlet{
	private static final long serialVersionUID = 1L;


					/*public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	                {
	                  
	                 
	                }*/
	                
	                
	                public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	                {
	                	Vendor_details userdetails=(Vendor_details) req.getAttribute("userdetails");
	              
	                	VendorInfo user=(VendorInfo)req.getSession().getAttribute("user");
	                	HttpSession session=req.getSession();
	                	session.setAttribute("user", user);
	                    System.out.println("user checked2");
	                	RequestDispatcher rd = req.getRequestDispatcher("vendor_main.jsp");
	                                rd.include(req, res);
	                                
	                }
	                
	                
	}

