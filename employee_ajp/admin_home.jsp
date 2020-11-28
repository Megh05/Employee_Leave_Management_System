<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>

    <!-- Section: about -->
    <section id="about" class="home-section text-center">
          <div class="container">

	    <div class="row">
		<div class="heading-about">
                    <h2> Unplanned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Status</td></tr>
                    <%
                    Statement st = con.createStatement();
                ResultSet rs;
                
                rs = st.executeQuery("select * from unplanned_leave join saff on saff.id=unplanned_leave.saff_id");
                while (rs.next())
                {
                  String id = rs.getString(1);
                  String x = rs.getString(2);
                  String y = rs.getString(3);
                  String z = rs.getString(7);
                  String w = rs.getString(13);
                  String q = rs.getString(15);

                  out.println("<tr><td>" + x +"</td>"+"<td>" + y +"</td>"+"<td>" + z +"</td>"+"<td>" + q +"</td>"+"<td>" + w + "</td>"+"<td><a href='approve.jsp?id=" + id +"' class='btn btn-primary'> Approve </a><a style='margin: 10px'; href='reject.jsp?id=" + id +"' class='btn btn-primary'> Reject </a></td></tr>");
                        
                    
                } //else {
                   // out.println("Invalid password <a href='index.jsp'>try again</a>");
                //}
                %>
                    </table>
                    <h2> Planned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Status</td></tr>
                    <%
                    Statement s1 = con.createStatement();
                ResultSet ms;
                
                ms = s1.executeQuery("select * from planned_leave join saff on saff.id=planned_leave.saff_id");
                 while (ms.next()) {
                  
                  String id = ms.getString(1);
                  String a = ms.getString(2);
                  String b = ms.getString(3);
                  String c = ms.getString(9);
                  String e = ms.getString(11);
                  String d = ms.getString(13);

                  out.println("<tr><td>" + a +"</td>"+"<td>" + b +"</td>"+"<td>" + c +"</td>"+"<td>" + d +"</td>"+"<td>" + e + "</td>"+"<td><a href='plan_approve.jsp?id=" + id +"' class='btn btn-primary'> Approve </a><a style='margin: 10px'; href='plan_reject.jsp?id=" + id +"' class='btn btn-primary'> Reject </a></td></tr>");
                        
                    
                } //else {
                   // out.println("Invalid password <a href='index.jsp'>try again</a>");
               // }
                %>

                    </table>
                </div>
            </div>
          </div>
    </section>
<%@ include file="footer.jsp" %>