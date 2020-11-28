
<%@ include file="user_header.jsp" %>



	<!-- Section: about -->
    <section id="about" class="home-section text-center">
	     <div class="container">

	    <div class="row">
		<div class="heading-about">
                <h3> Unplanned Leave Application </h3>
		<form action="post_plan_leave.jsp" method="post">
                    <table class="table table-bordered">
                        <tr> <td><label> Leave From </label><input type="date" name="leave_from" class="form-control"> </td><td> <label> To </label> <input type="date" name="from_to" class="form-control"></td></tr>
                        <tr>
				    <td> <label> If Going to out of station , Address with Phone No. </label>
			<textarea class="form-control"></textarea>
				    </td>
				    <td>
						<label> Type Of Leave Application &nbsp;&nbsp;&nbsp;</label><br/>
						 <input type="radio" name="application_type" value="Short Break" > Short Break
						<input type="radio" name="application_type" value="Planned leave" > Planned Leave
						<br/>
						<label> If Short Break </label><br/>
						From Time: <input type="time" name="from_time"> To : <input type="time" name="duration">
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
						<label style="margin:5px"> Remarks</label>
						<textarea name="auth_remarks" class="form-control"></textarea>
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