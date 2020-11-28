<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>
   <section id="about" class="home-section text-center">
		<div class="heading-about">
                    
                    <%
                     Statement st = con.createStatement();
                ResultSet rs;
                rs = st.executeQuery("select * from saff");
                %>
                <table class="table table-bordered">
                    <tr><td> Name </td><td> Email </td><td> Mobile </td> <td>Address</td><td>Dept</td><td>Salary</td></tr>
                <%
                while(rs.next()) {
                %>
                <tr><td> <% out.print(rs.getString(2)); %> </td><td><% out.print(rs.getString(3)); %> </td><td> <% out.print(rs.getString(4)); %> </td> <td><% out.print(rs.getString(5)); %> </td><td><% out.print(rs.getString(6)); %> </td><td><% out.print(rs.getString(7)); %> </td></tr>
                <%
                
                }
                    %>
                </table>
                </div>
   </section>
<%@ include file="footer.jsp" %>