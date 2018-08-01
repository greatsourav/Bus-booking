<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>News Editing</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">    
        <style>
            .man{
                color: red;
                font-size: 18px;
                font-family: sans-serif;
            }
            table{
                width: auto;
                height: auto;
            }
        </style>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script>
            var xhttp;
            $(document).ready(function () {
                $("#edit").click(function () {
                    $("#ed_nw").css("display", "box");
                    $("#ed_nw").focus();
                });
                $("#del").click(function(){
                   window.alert($(".id_html").first().val());
                });

            });

        </script>
    </head>
    <body>
        <!--Icon of the page-->
        <header>
            <img src="/bb1/images/im4.PNG" height="300" width="1350" />
        </header>
        <!--Welcome Text-->
        <section style=" position: absolute;    left: 280px;    top: 320px;">
            Welcome - <span> </span> To G.S.R.T.C
        </section>
        <!--Header of page-->
        <div style=" position: absolute;    left: 280px;    top: 340px;">
            Welcome To Gujarat State Road Transport Corporation - Administrator Home
        </div>
        <!--Top Nav Table-->
        <nav style=" position: absolute;    left: 280px;    top: 370px;">
            <!--Don't edit this line--><a href="/bb1/upn.html">Update News</a> | <a href="/bb1/chnpw.html">Change Password</a> | <a href="/bb1/ud.html">User Details</a> | <a href="/bb1/vf.html">View Feedback</a> 
            <br><br>
        </nav>
        <!-- left Nav Table -->
        <!-- <aside>
            <table align="left" border="0" width="270">
                <tr>
                    <td><a href="/bb1/addbus.html" style="text-decoration: none">Add Bus</a></td>
                </tr>
                <br>
                <tr>
                    <td>Add Pickup Stand</td>
                </tr>
                <tr>
                    <td>View Report</td>
                </tr>
                <tr>
                    <td>Logout</td>
                </tr>
            </table>
        </aside>
       My Table-->
    <!--     <section style=" position: absolute;    left: 280px;    top: 420px;" >
            <form method="post" action="newsConn.jsp">
                <table cellspacing="10px" name="details_table"> 
                    <tr><th colspan="3" class="man">'*' Defines Required Fields</th></tr>
                    <tr>
                        <th valign='top'>
                            News Description
                        </th>
                        <td valign='top'>
                            <textarea id="des" cols="70" maxlength="2500" rows="14" spellcheck="true" autofocus="autofocus" name="desc" required="true" placeholder="Enter news details"></textarea>
                        </td>
                        <th class="man">*</th>
                    </tr>
                    <tr>
                        <th valign='top'>Add link</th>
                        <td valign='top'><input type="text" placeholder="Link" name="link" size="81" ></td>
                    </tr>
                    <tr>
                        <th>News Date</th>
                        <td><input type='date' name="date" value='mm/dd/yyyy'></td>
                        <th class="man">*</th>
                    </tr>
                    <tr>
                        <td><input type="text" style="display:none;" value="1" name="upd"></td>
                        <td><button type="submit" align="center" style="color:white; background-color:orange; border: groove 2px ; padding:10px; border-radius: 15px;" id="update_button">Update</button> <button type="reset" align="center" style="color:white; background-color:orange; border: 2px ; border-style: groove; padding:10px; border-radius: 15px;" >Cancel</button></td>
                    </tr>
                </table>

            </form>
            <div id="division_"></div>
        </section>
 -->
        <%
            int count = 0, i = 0, j = 0;
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection cn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "sourav", "1506366");
            Statement st = cn.createStatement();
            PreparedStatement pst1 = cn.prepareStatement("Select * from journ"), pst2 = cn.prepareStatement("insert into news values (?,?,?,?)"), pst3 = cn.prepareStatement("commit"), pst4 = cn.prepareStatement("delete from news where N_ID=?,News=?,Link=?,N_Date=?");
            ResultSet rs1, rs2, rs3, rs4;
            count = pst1.executeUpdate();
            rs1 = pst1.executeQuery();
            String id[] = new String[count], ln[] = new String[count], des[] = new String[count], dat[] = new String[count];
            String NID = null, link = request.getParameter("link"), desc = request.getParameter("desc"), date = request.getParameter("date");

        %>

        <%  while (rs1.next() && i < count) {
                id[i] = rs1.getString(1);
                des[i] = rs1.getString(2);
                ln[i] = rs1.getString(3);
                dat[i] = rs1.getString(4);
                i++;
            }
        %>

        <%
            for (i = 0; i < count; i++) {
        %>
        <!-- DataBase Table retrieval-->
        <table id='new_Table' border='2px' style='position: relative; top: 840px; left: 360px; padding: 10px;'>
            <tr>
                <th></th>
                <th><a>News ID</a></th>
                <th><a>News Desc</a></th>
                <th><a>Date</a></th>
            </tr><tr>
                <td>
                    <a href='#edit_news' id='edit'>Edit</a> <button id='del'>Delete</button> <a id='sel'>Select</a>
                </td>
                <td class="ïd_html">
                    <%=id[i]%>
                </td>
                <td class="desc_html">
                    <a href="<%=ln[i]%>"><%=des[i]%></a>
                </td>
                <td class="dat_html">
                    <%=dat[i]%>
                </td>
            </tr>
        </table>


        <%}
            String r = request.getParameter("upd");
            if (r != null && r.equals("1")) {
                
                if ((count + 1) < 10) {
                    NID = "N0" + (count+1);
                } else {
                    NID = "N" + (count+1);
                }
                
                pst2.setString(1, NID);
                pst2.setString(3, link);
                pst2.setString(2, desc);
                pst2.setString(4, date);

                rs2=pst2.executeQuery();
                rs3 = pst3.executeQuery();
                if (rs2.next()) {
                  
        %>
        <jsp:include page="/confirmation.html"/>  

        <%      }
            }
        %>
        <!--Delete function goes here-->
        <%            String d = request.getParameter("del");
            if (d != null && d.equals(1)) {
                pst4.setString(1, NID);
                pst4.setString(2,desc);
                pst4.setString(3, link);
                pst4.setString(4, date);
                
            }
        %>


    </body>
</html>