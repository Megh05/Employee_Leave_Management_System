<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
   <section id="about" class="home-section text-center">
		<div class="heading-about">
                    <%
                    String name     = request.getParameter("name");
                    String email    = request.getParameter("email");
                    String mobile   = request.getParameter("mobile");
                    String address  = request.getParameter("address");
                    String department = request.getParameter("department");
                    String salary = request.getParameter("salary");
                    String uname = request.getParameter("uname");
                    String pass = request.getParameter("pass");
		    
		    String state = request.getParameter("state");
		    String country = request.getParameter("country");
		    String zip_code = request.getParameter("zip_code");
            String city = request.getParameter("city");
            String designation = request.getParameter("designation");
		    String dob = request.getParameter("dob");
		    
		    String home_phone = request.getParameter("home_phone");
		    String cell_phone = request.getParameter("cell_phone");
		    String gender = request.getParameter("gender");
		    String married = request.getParameter("married");
		   // String photo = request.getParameter("photo");
		    
		    
                     Statement st = con.createStatement();
                    //ResultSet rs;
                    int i = st.executeUpdate("insert into saff(name, email, mobile, address, dept, salary,uname,pass,state,country ,zip_code,dob,home_phone,cell_phone,gender,married, city, designation) values ('" + name + "','" + email + "','" + mobile + "','" + address + "', '" + department + "','" + salary + "','" + uname + "','" + pass + "', '" + state + "', '" + country + "' ,'" + zip_code + "', '" + dob + "', '" + home_phone + "','" + cell_phone + "', '" + gender + "', '" + married + "', '" + city + "', '" + designation + "')");
                   
                    if (i > 0) {
                        response.sendRedirect("employee_detail.jsp");
                    }
                    
                    %>
                </div>
   </section>
<%@ include file="footer.jsp" %>
