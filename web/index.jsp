<%-- 
    Document   : index
    Created on : 2016. 2. 16, 오후 10:33:33
    Author     : Heewon Kim 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <body>
        <div id="frame">
            <h1>Salary Calculator</h1>
            <hr>
            <form name="form" action="results.jsp" method="post">
                <table>
                   <tbody>
                        <tr>
                           <td>Hours Worked:</td>
                           <td class="box"><input type="text" name="hourWorked" value="" size="50" required></td>
                        </tr>  
                    
                        <tr>
                            <td>Hourly Pay:</td>
                            <td class="box"><input type="text" name="hourlyPay" value="" size="50" required></td>
                        </tr>   
                        
                        <tr>
                            <td>Pre-Tax Deduct:</td>
                            <td class="box"><input type="text" name="preTaxDeduct" value="" size="50" required></td>
                        </tr>    
                        
                        <tr>
                            <td>Post-Tax Deduct:</td>
                            <td class="box"><input type="text" name="postTaxDeduct" value="" size="50" required ></td>
                        </tr>
                    </tbody>
                </table>
                <div id="switch">
                    <input class="button" type="reset" value="Clear" id="clear">
                    <input class="button" type="submit" value="Submit" id="submit">
                </div>
            </form>
        </div>
        
    </body>
</html>
