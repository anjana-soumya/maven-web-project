<!DOCTYPE html>
<html>
<head>
    <title>Simple Calculator</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            text-align: center;
            background: linear-gradient(135deg, #8e44ad, #3498db);
            color: #fff;
            margin: 0;
            padding: 0;
        }
        h2 {
            margin-top: 20px;
            font-size: 2em;
            font-weight: bold;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.3);
        }
        .container {
            display: inline-block;
            background: #fff;
            color: #333;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 6px 10px rgba(0, 0, 0, 0.2);
            margin-top: 30px;
            text-align: center;
        }
        .container h3 {
            font-size: 1.2em;
            margin-bottom: 10px;
        }
        input, select, button {
            padding: 12px;
            margin: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: 80%;
            display: block;
            margin: 10px auto;
        }
        input:focus, select:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0px 0px 5px rgba(52, 152, 219, 0.5);
        }
        button {
            background-color: #3498db;
            color: white;
            border: none;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        button:hover {
            background-color: #2980b9;
        }
        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
        p {
            font-size: 1.5em;
            color: #2c3e50;
            font-weight: bold;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Enhanced Calculator</h2>
    <div class="container">
        <h3>Enter First Number:</h3>
        <input id="firstNumber" type="number" placeholder="Enter number">
        <h3>Enter Second Number:</h3>
        <input id="secondNumber" type="number" placeholder="Enter number">
        <h3>Select Operation:</h3>
        <select id="operation">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Multiplication</option>
            <option value="/">Division</option>
        </select>
        <button id="calculateBtn" onClick="calculate()">Calculate</button>
        <h3>Result:</h3>
        <p id="sol"></p>
    </div>

    <script>
        function calculate() {
            let a = parseFloat(document.getElementById("firstNumber").value);
            let b = parseFloat(document.getElementById("secondNumber").value);
            let operation = document.getElementById("operation").value;
            let result;

            if (isNaN(a) || isNaN(b)) {
                result = "Please enter valid numbers.";
            } else {
                switch (operation) {
                    case "+":
                        result = a + b;
                        break;
                    case "-":
                        result = a - b;
                        break;
                    case "*":
                        result = a * b;
                        break;
                    case "/":
                        result = b !== 0 ? a / b : "Division by zero is not allowed.";
                        break;
                    default:
                        result = "Invalid operation.";
                }
            }

            document.getElementById("sol").innerHTML = result;
        }
    </script>
</body>
</html>
