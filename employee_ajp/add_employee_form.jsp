<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>



	<!-- Section: about -->
    <section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Add Empolyee</h2>
					<i class="fa fa-2x fa-angle-down"></i>

        <form action="save_emp.jsp" method="post">
            <table class="table table-bordered">
                <tr>
                    <td>
                    Name:                     
                    </td>
                    <td>
                    <input type="text" name="name" class="form-control" required>    
                    </td>
                </tr>
                <tr>
                    <td>
                    Email:                     
                    </td>
                    <td>
                    <input type="email" name="email" class="form-control" required>    
                    </td>
                </tr>
                <tr>
                    <td>
                    Mobile:                     
                    </td>
                    <td>
                    <input type="text" name="mobile" class="form-control" maxlength="10" required>    
                    </td>
                <tr>    
                    <td>
                    Address:                     
                    </td>
                    <td>
                    <textarea name="address" class="form-control" required>  </textarea>  
                    </td>
                </tr>
                
		
		
		<tr>    
                    <td>
                    State:                     
                    </td>
                    <td>
                    <input type="text" name="state" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    Country:                     
                    </td>
                    <td>
                    <input type="text" name="country" class="form-control" required>  
                    </td>
                </tr>
                        <tr>    
                    <td>
                    City:                     
                    </td>
                    <td>
                    <input type="text" name="city" class="form-control" required>  
                    </td>
                </tr>
                        <tr>    
                    <td>
                    Designation:                     
                    </td>
                    <td>
                    <input type="text" name="designation" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    Zip Code:                     
                    </td>
                    <td>
                    <input type="text" name="zip_code" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    DOB:                     
                    </td>
                    <td>
                    <input type="text" name="dob" class="form-control" required>  
                    </td>
                </tr>
		
		<tr>    
                    <td>
                    Home Phone:                     
                    </td>
                    <td>
                    <input type="text" name="home_phone" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    Cell Phone:                     
                    </td>
                    <td>
                    <input type="text" name="cell_phone" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    Gender:                     
                    </td>
                    <td>
			
			<input type="radio" name="gender" value="male"> Male <input type="radio" name="gender" value="female"> Female
                      
                    </td>
                </tr>
		<tr>    
                    <td>
                    Married:
		    
                    </td>
                    <td>
			
			<select name="married" class="form-control">
				    <option value="married"> Married </option>
				    <option value="unmarried"> Unmarried </option>
				    <option value="divorced"> Divorced </option>
				    <option value="widowed"> Widowed </option>
			</select>
                    
                    </td>
                </tr>
		
		
                <tr>    
                    <td>
                    Department:                     
                    </td>
                    <td>
                    <input type="text" name="department" class="form-control" required>  
                    </td>
                </tr>
                <tr>    
                    <td>
                    Salary:                     
                    </td>
                    <td>
                    <input type="text" name="salary" class="form-control" required>  
                    </td>
                </tr>
		
		<tr>    
                    <td>
                    Username:                     
                    </td>
                    <td>
                    <input type="text" name="uname" class="form-control" required>  
                    </td>
                </tr>
		<tr>    
                    <td>
                    Password:                     
                    </td>
                    <td>
                    <input type="text" name="pass" class="form-control" required>  
                    </td>
                </tr>
		
                <tr>    
                    
                    <td colspan="2">
                    <input type="submit"  class="btn btn-success">  
                    </td>
                </tr>
            </table>
        </form>
					</div>
					</div>
					
                                </div>
			</div>
			</div>
		</div>
		<div class="container">

		<div class="row">
			<div class="col-lg-2 col-lg-offset-5">
				<hr class="marginbot-50">
			</div>
		</div>
        <div class="row">
            
        </div>		
		</div>
	</section>
	<!-- /Section: about -->
<%@ include file="footer.jsp" %>

