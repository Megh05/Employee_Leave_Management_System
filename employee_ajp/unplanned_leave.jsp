
<%@ include file="user_header.jsp" %>



	<!-- Section: about -->
    <section id="about" class="home-section text-center">
	     <div class="container">

	    <div class="row">
		<div class="heading-about">
                <h3> Planned Leave Application </h3>
                <form action="post_unplan_leave.jsp" method="post">
                    <table class="table table-bordered">
                        <tr> <td><label> Leave From </label><input type="date" name="leave_from" class="form-control" placeholder="YYYY-MM-DD"> </td><td> <label> To </label>
                         <input type="date" name="from_to" class="form-control" placeholder="YYYY-MM-DD"></td></tr>
                        <tr>
				    <td> <label> Type of Planned Activity </label>
			<input type="radio" name="unplanned_activity" value="Missed Punch" > Missed Punch
                        <input type="radio" name="unplanned_activity" value="Late Entry" > Late Entry
                        <input type="radio" name="unplanned_activity" value="Unplanned Leave" > Unplanned Leave
                        <input type="radio" name="unplanned_activity" value="Early Exit" > Early Exit
                        
				    </td>
				    <td>
					<label style="margin:5px"> Reason Of Leave </label>
						<textarea name="reason_of_leave" class="form-control"></textarea>	
				    </td>
			</tr>
			<tr>
				    <td>
						<label> Planned Leave Type </label>
						<br/>
						<input type="radio" name="leave_type" value="1/2 CL" style="margin:5px"> 1/2 CL
						<input type="radio" name="leave_type" value="ml" style="margin:5px"> ML
						<input type="radio" name="leave_type" value="lmp" style="margin:5px"> LMP
						<input type="radio" name="leave_type" value="el" style="margin:5px"> EL
						<input type="radio" name="leave_type" value="cl" style="margin:5px"> CL
						<input type="radio" name="leave_type" value="c.off" style="margin:5px"> C.off
						<input type="radio" name="leave_type" value="ol" style="margin:5px"> OL
						<input type="radio" name="leave_type" value="od" style="margin:5px"> OD<br/>
						<label style="margin:5px"> HOD Recommended </label>
						<input type="radio" name="hod_recommend" value="yes"> Yes
						<input type="radio" name="hod_recommend" value="no"> No<br/>
						<label style="margin:5px"> Remarks</label>
						<textarea name="remarks" class="form-control"></textarea>
						
				    </td>
				    <td>
						<label style="margin:5px"> Staff id</label>
						<input type="test" name="id">
						<br><br><br>
						<label style="margin:5px"> Sanctioning Authority / Head of Institution Recommended </label>
						<input type="radio" name="authority_recommend" value="yes"> Yes
						<input type="radio" name="authority_recommend" value="no"> No<br/>
						
				    </td>
			</tr>
			
			<tr>
                            <td colspan="2"><input type="submit" name="submit" value="submit" class="btn btn-primary"></td>
                        </tr>
                        
                    </table>
                </form>
                </div>
	    </div>
	     </div>
    </section>
	<!-- /Section: about -->
	

	
	

<%@ include file="footer.jsp" %>