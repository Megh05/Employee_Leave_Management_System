<%@ page import="java.util.*" %>

<%@ include file="db.jsp" %>
<%@ include file="user_header.jsp" %>
    <section id="about" class="home-section text-center">
	     <div class="container">

                <div class="row">
                    <%
                    //Date date = new Date();
                    String leave_from           = request.getParameter("leave_from");
                    String from_to              = request.getParameter("from_to");
                    String application_type     = request.getParameter("application_type");
                    String from_time            = request.getParameter("from_time");
                    String duration             = request.getParameter("duration");
                    String leave_type           = request.getParameter("leave_type");
                    String hod_recommend        = request.getParameter("hod_recommend");
                    String remarks              = request.getParameter("remarks");
                    String authority_recommend     = request.getParameter("authority_recommend");
                    String auth_remarks         = request.getParameter("auth_remarks");
                    String id = request.getParameter("id");
                  //  String date_of_application    = date.toString();

                    
                    
                    out.println(leave_from);
                    out.println(from_to);
                    out.println(application_type);
                    out.println(from_time);
                    out.println(duration);
                    out.println(leave_type);
                    out.println(hod_recommend);
                    out.println(remarks);
                    out.println(authority_recommend);
                    out.println(auth_remarks);
                   // out.println(date_of_application);
                     Statement st = con.createStatement();
                    //ResultSet rs;
                    int i = st.executeUpdate("insert into unplanned_leave(leave_from, from_to, application_type, from_time, duration, leave_type, hod_recommend,remarks,authority_recommend,auth_remarks, saff_id) values ('" + leave_from + "','" + from_to + "','" + application_type + "','" + from_time + "', '" + duration + "','" + leave_type + "','" + hod_recommend+ "','" + remarks + "', '" + authority_recommend + "', '" + auth_remarks + "', '" + id + "')");
                   
                    if (i > 0) {
                       response.sendRedirect("emp_leave.jsp");
                    }
                    
                    %>
                </div>
             </div>
    </section>

