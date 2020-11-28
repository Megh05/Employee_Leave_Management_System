<%@ page import="java.util.*" %>
<%@ include file="user_header.jsp" %>
<%@ include file="db.jsp" %>

    <!-- Section: about -->
    <section id="about" class="home-section text-center">
          <div class="container">

	    <div class="row">
		<div class="heading-about">
                    <h2> Unplanned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Approval</td></tr>



                    <%
                  //  String userid = request.getParameter("uname");
                   //      String userid = session.getAttribute("userid");
  
                    Statement st = con.createStatement();
                    ResultSet rs;

                
                String mid1 = (String)session.getAttribute("mid");
                String userid = (String)session.getAttribute("userid");

                rs = st.executeQuery("select * from unplanned_leave join saff on saff.id=unplanned_leave.saff_id where unplanned_leave.saff_id='" + mid1 + "'");
                while (rs.next())
                {
                  String x = rs.getString(2);
                  String y = rs.getString(3);
                  String z = rs.getString(7);
                  String w = rs.getString(13);
                  String q = rs.getString(15);

                  out.println("<tr><td>" + x +"</td>"+"<td>" + y +"</td>"+"<td>" + z +"</td>"+"<td>" + q +"</td>"+"<td>" + w + "</td></tr>");
                        
                    
                } //else {
                   // out.println("Invalid password <a href='index.jsp'>try again</a>");
                //}
                %>
                    </table>
                    <h2> Planned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Approval</td></tr>
                    <%
                  //  String userid = request.getParameter("uname");
                  //  String userid = session.getAttribute("userid");
                    Statement s1 = con.createStatement();
                ResultSet ms;


                String mid2 = (String)session.getAttribute("mid");
                //String userid1 = ms.getString(10);

                ms = s1.executeQuery("select * from planned_leave join saff on saff.id=planned_leave.saff_id where saff_id='" + mid2 + "'");
                 while (ms.next()) {
                  
                  String a = ms.getString(2);
                  String b = ms.getString(3);
                  String c = ms.getString(9);
                  String e = ms.getString(11);
                  String d = ms.getString(13);

                  out.println("<tr><td>" + a +"</td>"+"<td>" + b +"</td>"+"<td>" + c +"</td>"+"<td>" + d +"</td>"+"<td>" + e + "</td></tr>");
                        
                    
                } //else {
                   // out.println("Invalid password <a href='index.jsp'>try again</a>");
               // }
            // }
                %> 
                    </table>
                </div>
            </div>
          </div>
    </section>
<%@ include file="footer.jsp" %>