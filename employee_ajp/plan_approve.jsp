<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
   try

   {
// Load the database driver

  Class.forName("com.mysql.jdbc.Driver");

  // Get a Connection to the database
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oems",  "root", "");
  //String mid1 = (String)session.getAttribute("mid");
  String id = request.getParameter("id");
  Statement s = con.createStatement();
  String sql =("update planned_leave set status='yes' where id='" + id + "'");
  s.executeUpdate (sql);
  //s.close ();
  response.sendRedirect("admin_home.jsp");

  }catch(Exception e){

  System.out.println("Exception is :"+e);

  }

  %>