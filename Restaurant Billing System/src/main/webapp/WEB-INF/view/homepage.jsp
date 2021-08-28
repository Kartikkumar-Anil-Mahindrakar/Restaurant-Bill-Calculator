<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%-- <% response.addHeader("Refresh","5"); %> --%>
<title>Home page</title>
	<link href="${pageContext.request.contextPath}/resources/css/index.css" type = "text/css" rel="stylesheet">
</head>
<body>
	<h1 class= "header">Restaurant Bill Calculator</h1>
	<h4 id = "date"><%= new java.util.Date().toLocaleString() %></h4>
	<br>
	<form:form action="total" modelAttribute="restaurant" >
	<table border="4" class = "totalbill">
		<tr>
			<td>Fries(20Rs)</td>
			<td><form:input path="fries" id="fries" onchange="onChange()"/>
				<form:errors path="fries" cssClass="error"></form:errors></td>
			<td>Cost of Meal</td>
			<td><form:input path="costOfMeal" id = "costofMeal"/></td>
		</tr>
		<tr>
			<td>Sandwich(30Rs)</td>
			<td><form:input path="sandwich" id = "sandwich" onchange="onChange()"/></td>
			<td>Service charges</td>
			<td><form:input path="serviceCharges" id = "serviceCharges"/></td>
		</tr>
		<tr>
			<td>Burger(40Rs)</td>
			<td><form:input path="burgur" id = "burgur" onchange="onChange()"/></td>
			<td>GST</td>
			<td><form:input path="gst" id = "gst"/></td>
		</tr>
		<tr>
			<td>Drinks(10Rs)</td>
			<td><form:input path="drinks" id = "drinks" onchange="onChange()"/></td>
			<td>Total Tax</td>
			<td><form:input path="totalTax" id = "totalTax"/></td>
		</tr>
		<tr>
			<td>Pasta(60Rs)</td>
			<td><form:input path="pasta" id = "pasta" onchange="onChange()"/></td>
			<td>Total Cost</td>
			<td><form:input path="totalcost" id = "totalcost"/></td>
		</tr>
		
	</table>
	<br>
	<input type="button" value="Total bill" onclick="onon()"/>
	<input type="reset" value = "Reset">
	
	<br>
	<br>
	
	<table border="3" class = "calci" >
		<tr>
			<td colspan="4"><input type="text" id = "display" onkeypress="Display(event)"></td>
		</tr>
		<tr>
			<td><button type="button" id = "9" onclick="updateDisplay('9')">9</button></td>
			<td><button id = "8" type="button" onclick="updateDisplay('8')">8</button></td>
			<td><button id = "7"  type="button" onclick="updateDisplay('7')">7</button></td>
			<td><button id = "+"  type="button" onclick="updateDisplay('+')">+</button></td>
		</tr>
		<tr>
			<td><button id = "6" type="button" onclick="updateDisplay('6')">6</button></td>
			<td><button id = "5" type="button" onclick="updateDisplay('5')">5</button></td>
			<td><button id = "4" type="button" onclick="updateDisplay('4')">4</button></td>
			<td><button id = "-" type="button" onclick="updateDisplay('-')">-</button></td>
		</tr>
		<tr>
			<td><button id = "9" type="button" onclick="updateDisplay('3')">3</button></td>
			<td><button id = "8" type="button" onclick="updateDisplay('2')">2</button></td>
			<td><button id = "7" type="button" onclick="updateDisplay('1')">1</button></td>
			<td><button id = "/" type="button" onclick="updateDisplay('/')">/</button></td>
		</tr>
		<tr>
			<td><button id = "0" type="button" onclick="updateDisplay('0')">0</button></td>
			<td><button id = "C" type="button" onclick="updateDisplay('C')">C</button></td>
			<td><button id = "=" type="button" onclick="updateDisplay('=')">=</button></td>
			<td><button id = "*" type="button" onclick="updateDisplay('*')">*</button></td>
		</tr>
	</table>
	
	</form:form>
	
	
	<script type="text/javascript">
	document.getElementById('costofMeal').disabled = true;
	document.getElementById('serviceCharges').disabled = true;
	document.getElementById('gst').disabled = true;
	document.getElementById('totalTax').disabled = true;
	document.getElementById('totalcost').disabled = true;
	
			function Display(event){
				if(event.keyCode == 13){
					let total = document.getElementById('display').value;
					let k = eval(total);
					document.getElementById('display').value = k;
				}
			}
			function updateDisplay(val){
				
				if(val == '=' ){
					let total = document.getElementById('display').value;
					let k = eval(total);
					document.getElementById('display').value = k;
				}else if(val == 'C'){
					document.getElementById('display').value = '';
				}else {
					document.getElementById('display').value += val;	
				}
				
			}
	
			function onon(){
				window.alert( "Amount to be Paid "+ document.getElementById('totalcost').value);
			}
			function onChange() {
				var fries =document.getElementById('fries').value;
				var sandwich = document.getElementById('sandwich').value;
				var burgur = document.getElementById('burgur').value;
				var drinks = document.getElementById('drinks').value;
				var pasta = document.getElementById('pasta').value;
				var costofMeal = (parseInt(fries)*20 + parseInt(sandwich)*30 + parseInt(burgur)*40 + parseInt(drinks)*10 + parseInt(pasta)*60)* 1.00;
				document.getElementById('gst').innerText = costofMeal * 0.18;
				document.getElementById('costofMeal').innerText = costofMeal;
				document.getElementById('serviceCharges').innerText = costofMeal * 0.2; 
				document.getElementById('totalTax').innerText = costofMeal * 0.18 + costofMeal * 0.2;
				document.getElementById('totalcost').innerText = costofMeal * 0.18 + costofMeal * 0.2 + costofMeal;
			}
			
			
			
	</script>
</body>
</html>