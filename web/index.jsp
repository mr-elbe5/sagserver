<%@ page import="java.util.Map" %>
<%@ page import="sag.PrimeNumberCalculator" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    Map<String,String[]> parameters = request.getParameterMap();
    int maxNumbers = 1;
    String[] values = parameters.get("maxNumbers");
    if (values != null && values.length>0){
        try {
            maxNumbers = Integer.parseInt(values[0]);
            System.out.println("got maxNumbers = " + maxNumbers);
        }
        catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
    }
    if (maxNumbers == 0){
        maxNumbers = 1;
    }
    PrimeNumberCalculator calculator = new PrimeNumberCalculator();
    calculator.calculate(maxNumbers);
    List<Integer> results = calculator.primeNumbers;
%>
<html>
<head>
    <title>Prime Number Calculator</title>
</head>
<body style = "font-size: 2rem">
<h1><%= "Calculate Prime Numbers" %>
</h1>
<div>
    <form action="index.jsp" method="GET">
        <label for="maxNumbers">Enter the maximum number of prime numbers:</label>
        <input type="text" id="maxNumbers" name="maxNumbers" />
        <input type="submit" value="Start" />
    </form>
</div>
<div>Results:</div>
<div style = "overflow-wrap: break-word">
<% for (int i=0; i<results.size(); i++){%>
    <%=results.get(i)%>,&nbsp;
<%}%>
</div>
</body>
</html>