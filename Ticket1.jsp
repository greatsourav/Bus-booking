
 <%@page import="java.sql.*" errorPage="err.jsp" %>
 <%@page import="java.io.IOException"%>
 
 
<html>
<head><title>Ticket</title>
</head>
<body>
<imgsrc="" align="top">

<table style="width:90%">
 <tr><td><font size="20" color="red"><i>Thank You!!</font><br></td>
 <td><font size="3">Contact us:1800-343-256</font></td><td>Email:support@travelbus.com</td></tr>
</table>

<br><font color="orange" size="8"> Happy Journey!!  Enjoy the ride </i></font><br><br>


        

<fieldset><legend align="top"><u><i><font size="5">Ticket Details</font></i></u></legend>

<table style="width:90%" >
    <%
             String v3=(String)session.getAttribute("br");
             int v1=(Integer)session.getAttribute("bi");
             int v2=(Integer)session.getAttribute("rg");
             int v7=(Integer)session.getAttribute("fr");
             String v4=(String)session.getAttribute("fn");
             String v5=(String)session.getAttribute("ln");
             String v6=(String)session.getAttribute("doj");
             String v8=(String)session.getAttribute("em");
             long v9=(Long)session.getAttribute("cn");
             String v10=(String)session.getAttribute("fp");
             String v11=(String)session.getAttribute("tp");
             String v12=(String)request.getParameter("bd");
             String v13=(String)session.getAttribute("sn");
             String v14=(String)session.getAttribute("bn");
             String v15=(String)session.getAttribute("ar");
             String v16=(String)session.getAttribute("dp");
                           
                                   
out.println("<tr><td><font color=0000ff>Ticket no.</font>PAT13546BB </td><td><font color=0000ff>Transaction Id</font>:2264418450 </td></tr>");
           
out.println("<tr><td><font color=0000ff>Your name </font> : "+(v4+v5)+"</td><td><font color=0000ff>Phone number</font>:"+v9+"</td></tr>");

out.println("<tr><td><font color=0000ff>Booking Date</font>:"+v12+"</td><td><font color=0000ff>Date of Journey</font>:"+v6+"</td> </tr> ");
   
out.println("<tr><td><font color=0000ff>Bus Number </font> :"+v14+"</td><td><font color=0000ff>Bus Route</font>:"+v3+"</td></tr>");

out.println("<tr><td><font color=0000ff>From Place</font>:"+v10+"</td><td><font color=0000ff>To Place</font>: "+v11+"</td></tr>");

out.println("<tr><td><font color=0000ff>Seat(s) Number</font>:"+v13+"</td><td><font color=0000ff>Fare </font> :"+v7+"</td></tr>");

out.println("<tr><td><font color=0000ff>Departure Time (at source)</font>:"+v16+"</td><td><font color=0000ff>Arrival Time (at destination)</font>:"+v15+"</td></tr>");

out.println("<tr><td><font color=0000ff>Email </font>:"+v8+"</td></tr>");    
out.println("</table>");

                        
                        
        %> 
</fieldset>


<br><br><font color="red" size="4"><u>Terms and Conditions:</u></font><br><br><i>
Important Points:</i>
<div>
<br>1. TravelBus* is ONLY a bus ticket agent. It does not operate bus services of its own. In order to provide a comprehensive choice of bus operators, departure times and prices to customers, it has tied up with many bus operators. 

<br>TravelBus advice to customers is to choose bus operators they are aware of and whose service they are comfortable with.

<br>TravelBus responsibilities include: 

    -     Issuing a valid ticket (a ticket that will be accepted by the bus operator) for its? network of bus operators 
    -     Providing refund and support in the event of cancellation
    -     Providing customer support and information in case of any delays / inconvenience

<br>TravelBus responsibilities do NOT include:

    -    The bus operator?s bus not departing / reaching on time
    -    The bus operator?s employees being rude
    -    The bus operator?s bus seats etc not being up to the customer?s expectation
    -    The bus operator canceling the trip due to unavoidable reasons  
    -    The baggage of the customer getting lost / stolen / damaged
    -    The bus operator changing a customer?s seat at the last minute to accommodate a lady / child
    -    The customer waiting at the wrong boarding point (please call the bus operator to find out the exact
          boarding point if you are not a regular traveler on that particular bus)
    -    The bus operator changing the boarding point and/or using a pick-up vehicle at the boarding point to take
          customers to the bus departure point 

<br>* TravelBus means to include TravelBus and its partner outlets (Sify, Subhiksha, Done Card, Itz Cash etc)

<br>2. The arrival and departure times mentioned on the ticket are only tentative timings . However the bus will not leave the source before the time that is mentioned on the ticket. 

<br>3. Passengers are required to furnish the following at the time of boarding the bus:
    -    A copy of the ticket (A print out of the ticket or the print out of the ticket e-mail). 
    -    Identity proof (Driving license, Student ID card, Company ID card, Passport, PAN card or Voter ID card). 

<br>Failing to do so, they may not be allowed to board the bus. 

<br>4. Change of bus: In case the bus operator changes the type of bus due to some reason, TravelBus will refund the differential amount to the customer upon being intimated by the customers in 24 hours of the journey. 

<br>5. Cancellation Policy: Cancellation policy not available. 

<br>6. In case one needs the refund to be credited back to his/her bank account, please write your cash coupon details to support@travelbus.com. 

<br>* The transaction charges or the home delivery charges, will not be refunded in the event of ticket cancellation
<br>7. In case a booking confirmation e-mail and sms gets delayed or fails because of technical reasons or as a result of incorrect e-mail ID / phone number provided by the user etc, a ticket will be considered 'booked' as long as the ticket shows up on the confirmation page of www.TravelBus.in.
<br>8. RAIL PNR : TravelBus does not warrant or make any representations regarding the use of or the result of the use of the material on the site in terms of their correctness, accuracy, reliability, or otherwise, in so far as such material is derived from other service providers. 

Travelbus will not be liable to you or to any other person for any direct, indirect, incidental, punitive or consequential loss, damage, cost or expense of any kind whatsoever and howsoever caused from out of the information derived by you through your usage of this Site. In no event shall Travelbus be liable for any direct, indirect, punitive, incidental, special, or consequential damages arising out of information provided on the website in so far as such information is derived from other service providers.
</div>
<div>Communication Policy<br>

<br>1.By accepting the terms and conditions the customer accepts that Travelbus may send the alerts to the mobile phone number provided by the customer while registering for the service or to any such number replaced and informed by the customer. The customer acknowledges that the alerts will be received only if the mobile phone is in ?On? mode to receive the SMS. If the mobile phone is in ?Off?? mode then the customer may not get / get after delay any alerts sent during such period.

<br>2.Travelbus will make best efforts to provide the service and it shall be deemed that the customer shall have received the information sent from Travelbus as an alert on the mobile phone number provided during the course of ticket booking and TravelBus shall not be under any obligation to confirm the authenticity of the person(s) receiving the alert. The customer cannot hold Travelbus liable for non-availability of the service in any manner whatsoever.

<br>3.The customer acknowledges that the SMS service provided by Travelbus is an additional facility provided for the customer?s convenience and that it may be susceptible to error, omission and/ or inaccuracy. In the event the customer observes any error in the information provided in the alert, Travelbus shall be immediately informed about the same by the customer and Travelbus will make best possible efforts to rectify the error as early as possible. The customer shall not hold Travelbus liable for any loss, damages, claim, expense including legal cost that may be incurred/ suffered by the customer on account of the SMS facility.

<br>4.The customer acknowledges that the clarity, readability, accuracy, and promptness of providing the service depend on many factors including the infrastructure, connectivity of the service provider. Travelbus shall not be responsible for any non-delivery, delayed delivery or distortion of the alert in any way whatsoever.

<br>5.The customer agrees to indemnify and hold harmless TravelBus and the SMS service provider including its officials from any damages, claims, demands, proceedings, loss, cost, charges and expenses whatsoever including legal charges and attorney fees which Travelbus and the SMS service provider may at any time incur, sustain, suffer or be put to as a consequence of or arising out of (i) misuse, improper or fraudulent information provided by the customer, (ii) the customer providing incorrect number or providing a number that belongs to that of an unrelated third party, and/or (iii) the customer receiving any message relating to the reservation number, travel itinerary information, booking confirmation, modification to a ticket, cancellation of ticket, change in bus schedule, delay, and/or rescheduling from Travelbus and/or the SMS service provider.

<br>6.Grievances and claims related to the bus journey should be reported to TravelBus support team within 10 days of your travel date.
</div>

<br><br> 
<button type="submit" align="centre">Print</button>
</body>
</body>
</html>
