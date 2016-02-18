<%-- 
    Document   : results
    Created on : 2016. 2. 16, 오후 10:33:33
    Author     : Heewon Kim 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>
    
    <%
        int hourWorked = Integer.parseInt(request.getParameter("hourWorked"));
        int hourlyPay = Integer.parseInt(request.getParameter("hourlyPay"));
        int preTaxDeduct = Integer.parseInt(request.getParameter("preTaxDeduct"));
        int postTaxDeduct = Integer.parseInt(request.getParameter("postTaxDeduct"));
        double hours = 0;
        double normalPayRate = 0.18;
        double totalPay = 0;
        double prePay;
        double taxAmount;
        double postPay;
        double netPay;
        double overPayRate = 0.22;
        
        if(hourWorked > 40)
        {   hours = hourWorked - 40;
            totalPay = overPayRate * hours + 40 * hourlyPay;
        }
        else
        {
            totalPay = hourWorked * hourlyPay;
        }   
        prePay = totalPay - preTaxDeduct;
        
        if (prePay < 500)
        {
            taxAmount = prePay * normalPayRate;
        }
        else
        {
            taxAmount = prePay * overPayRate;
        }
        
        postPay = prePay - taxAmount;
        netPay = postPay - postTaxDeduct; 
    %>
    
    
    <body>
        <div id="frame">
            <h1>Salary Info</h1>
            <hr>
            <div id="chart">
                <table border="1">
                <tbody>
                    <tr>
                        <td>Total Hours Worked:</td>
                        <td><%= hourWorked  %></td>
                    </tr>
                    <tr>
                        <td>Hourly Rate:</td>
                        <td><%= normalPayRate %></td>
                        </tr>
                    <tr>
                        <td># Hours Overtime:</td>
                        <td><%= hours %></td>
                    </tr>

                    <tr>
                        <td>Overtime Hourly Rate:</td>
                        <td><%= overPayRate %></td>
                    </tr>
                
                    <tr>
                        <td>Gross Pay:</td>
                        <td><%= totalPay %></td>
                    </tr>
                    <tr>
                        <td>Pre-Tax Deduct:</td>
                        <td><%= preTaxDeduct %></td>
                    </tr>
                    <tr>
                        <td>Pre-Tax Pay:</td>
                        <td><%= prePay %></td>
                    </tr>
                    <tr>
                        <td>Tax Amount:</td>
                        <td><%= taxAmount %></td>
                    </tr>
                    <tr>
                        <td>Post-Tax Pay:</td>
                        <td><%= postPay %></td>
                    </tr>
                    <tr>
                        <td>Post-Tax Deduct:</td>
                        <td><%= postTaxDeduct %></td>
                    </tr>
                    <tr>
                        <td>Net Pay:</td>
                        <td><%= netPay %></td>
                    </tr>
                </tbody>
                </table>
            </div>
            
        <a href="./index.jsp"> Back </a>
        </div>
        
    </body>
</html>
