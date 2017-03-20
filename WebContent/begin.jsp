<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link rel="stylesheet" href="./stylish.css" />
<title>GaMe-BeGiN</title>

<script type="text/javascript">
	function createTable() {

		document.getElementById("rules")
				.setAttribute("style", "display: block");
		document.getElementById("createT").setAttribute("style",
				"display: none");
		document.getElementById("destroyT").setAttribute("style",
				"display: block");

		var theTable = document.getElementById("myDivTable");

		var createdTable = document.createElement("table");
		createdTable.setAttribute("class", "whatATable");
		createdTable.setAttribute("border", "1");

		var tabBody = document.createElement("tbody");
		createdTable.appendChild(tabBody);

		for (var i = 0; i < 3; i++) {
			var myRow = document.createElement("tr");
			tabBody.appendChild(myRow);

			for (var j = 0; j < 3; j++) {
				var myCol = document.createElement("td");
				myCol.setAttribute("class", "whatACell");
				// var myText = document.createTextNode("Cell "+ i + "," + j);   // as alternative
				var myButton = document.createElement("input");
				myButton.setAttribute("id", i + "," + j);
				// myButton.setAttribute("value","Cell "+ i + "," + j);
				// myCol.appendChild(myText);   // as alternative
				myCol.appendChild(myButton);
				// myCol.setAttribute("id", i + "," + j);
				myRow.appendChild(myCol);
			}
		}

		theTable.appendChild(createdTable);
	}

	function evaluate() {
		// alert('hello!');
		var a00 = document.getElementById("0,0").value;
		var a01 = document.getElementById("0,1").value;
		var a02 = document.getElementById("0,2").value;

		var a10 = document.getElementById("1,0").value;
		var a11 = document.getElementById("1,1").value;
		var a12 = document.getElementById("1,2").value;

		var a20 = document.getElementById("2,0").value;
		var a21 = document.getElementById("2,1").value;
		var a22 = document.getElementById("2,2").value;

		if ((a00 != '' && a01 != '' && a02 != '' && (a00 == a01 && a01 == a02))
				|| (a10 != '' && a11 != '' && a12 != '' && (a10 == a11 && a11 == a12))
				|| (a20 != '' && a21 != '' && a22 != '' && (a20 == a21 && a21 == a22))
				||

				(a00 != '' && a10 != '' && a20 != '' && (a00 == a10 && a10 == a20))
				|| (a01 != '' && a11 != '' && a21 != '' && (a01 == a11 && a11 == a21))
				|| (a02 != '' && a12 != '' && a22 != '' && (a02 == a12 && a12 == a22))
				||

				(a00 != '' && a11 != '' && a22 != '' && (a00 == a11 && a11 == a22))
				|| (a02 != '' && a11 != '' && a20 != '' && (a02 == a11 && a11 == a20))

		) {

			alert('We have a winner!');
		}

	}

	$(document).keyup(function(event) {
		// alert('Handler for .keypress() called. - ' + event.charCode);
		evaluate();
	});

	function destroyTable() {
		location.reload();
	}
</script>

</head>
<body class="extraContainer">
	<div class="container" align="center">
		<hr>
		<button onclick="createTable()" id="createT" class="btn btn-success">Create
			Table</button>
		<hr>
		<div id="rules" style="display: none">
			<h3>Only X or 0 allowed!</h3>
		</div>
		<hr>
		<div id="myDivTable"></div>
		<hr>
		<button onclick="destroyTable()" id="destroyT" style="display: none"
			class="btn btn-danger">Destroy Table</button>
		<hr>

	</div>
</body>
</html>