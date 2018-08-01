
<%@ page import="java.lang.Compiler.*"%>
<%@ page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
	<title>Payement page</title>
</head>
<body>
<%
   
        Connection connection = null;
        Driver dr=new oracle.jdbc.driver.OracleDriver();
        DriverManager.registerDriver(dr); 
        connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select max(transaction) from trnsctn");
			
                        while(rs.next()){
                             long v1=rs.getLong(1);
                             
                        session.setAttribute("trn",(v1+1));
                        }
                        

%>

<img src="b1.png" width="300" height="130" align="right"> 
<br><br><form id="Pay" name="Pay" >  
<div>
    <%  int bi=(Integer)session.getAttribute("bi"); %>
    <%  long trn=(Long)session.getAttribute("trn");%> 
    <%  int amt=(Integer)session.getAttribute("fr");%>
    
    <b>&nbsp;Booking id : <%out.println(""+bi);%><br></b>
  <table><td>  <i><font color="blue"> Total payable amount :</font><font color="red"> <%out.println(""+amt);%> </i></font>
    </td><td><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Transaction ID : <%out.println(""+trn); %> </i></u>
     </td></table><br>
 </div>
 
    <div>Enter today's date<input type='text' name='bd' value='dd/mmm/yy'> </div>
   
 <div><br>
 <h2>  <i>       
<input type=radio value=CreditCard />
<font color="orange">Pay with Credit or Debit Card</font></h2>            
</div>             

<dt>Enter Card Number</dt>
   <dd>
  <input type="text" id="cc_no" name="cc_no" value="e.g. : 4321-968-5555"/>
 <span id="err_cc_no" class="jserror"> </span>
</dd>           
<dt>Expiry Date</dt>
 <dd>
<table cellpadding="0" cellspacing="0">
 <tr>
 <td><select id="cc_exp_mm" name="cc_exp_mm">
 <option value="">Month</option>
<option value="1" selected="selected">January</option>                                
<option value="2">February</option>                             
 <option value="3">March</option>                          
 <option value="4">April</option>                          
 <option value="5">May</option>                           
 <option value="6">June</option>                           
 <option value="7">July</option>                          
 <option value="8">August</option>                            
<option value="9">September</option>                    
<option value="10">October</option>                             
<option value="11">November</option>                            
 <option value="12">December</option>                            
 </select></td>                        
<td width="20">&nbsp;</td>                        
<td><select id="cc_exp_yyyy" name="cc_exp_yyyy">
<option value="">Month</option>
<option value="2016" selected="selected">2016</option>                                
<option value="2017">2017</option>                             
<option value="2018">2018</option>                          
<option value="2019">2019</option>                          
<option value="2020">2020</option>                           
<option value="2021">2021</option>                           
<option value="2022">2022</option>                          
<option value="2023">2023</option>                            
<option value="2024">2024</option>                    
<option value="2025">2025</option>                             
<option value="2026">2026</option>                            
<option value="2027">2027</option>
<option value="2028">2028</option>                            
<option value="2029">2029</option>
<option value="2030">2030</option>
</select>                        
</td>                    
</tr>                
</table>            
</dd>
<dt>Enter CVC</dt>
<dd>
 <input id="cvv" type="password" size="5" name="cvv" value="111"/><br><br>
 </dd>
 </dl>    
 
 <%
      
      String s1=request.getParameter("sn");
      session.setAttribute("sn",s1);
      
      dr=new oracle.jdbc.driver.OracleDriver();
      DriverManager.registerDriver(dr); 
      Connection cn;
      Statement st;
      PreparedStatement ps ;
      cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sourav","1506366");
      st=cn.createStatement();
                    
String command = "update booking_master set seat_no='"+s1+"' where book_id="+bi;
            st.executeUpdate(command);
            int rg=(Integer)session.getAttribute("rg");
String cod = "insert into trnsctn values("+trn+","+rg+","+bi+","+amt+")";
            st.executeUpdate(cod);

%>
 
<fieldset >                    
<legend align="top"><h2><font color="orange">Pay with Net Banking</font></h2> </legend>           
<input type=radio  value=ACH />                    
SBI<input type=radio  value=Sbi />                    
ICICI<input type=radio  value=ICICI />                    
BOI<input type=radio  value=boi />                    
HDFC<input type=radio  value=hdfc /> <br>                   
<dt>Enter id & pass to login</dt>
<dd>                
<input type="text"  value="Enter uid"/>            
<input type="text" id="bank_routing_num" name="bank_routing_num" value="Enter pass"/>            
</dd>            
<button type="submit"  formaction="otp.html"  > Confirm </button>            
</fieldset>    

<input type="submit"  formaction="Ticket1.jsp" value="Submit" />            

</form>
</body></html>
