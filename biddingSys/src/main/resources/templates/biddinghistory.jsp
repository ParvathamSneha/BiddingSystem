<!DOCTYPE html>
<html>
<head>
    <title>Online Bidding System</title>
    <style>
        .bidding-history {
            width: 50%;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        h1, h2 {
            text-align: center;
        }
        form {
            text-align: center;
        }
        label {
            display: block;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
        }
        button {
            padding: 10px 20px;
            background-color: #008CBA;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #005F8A;
        }
    </style>
</head>
<body>
    <h1>Online Bidding System</h1>
    
    <h2>Item Information</h2>
    <p><strong>Item Name:</strong> Product X</p>
    <p><strong>Description:</strong> This is a description of Product X.</p>
    
    <h2>Bidding History</h2>
    <div class="bidding-history">
        <table>
            <thead>
                <tr>
                    <th>User</th>
                    <th>Bid Amount</th>
                    <th>Date & Time</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>User 1</td>
                    <td>$50.00</td>
                    <td>2023-10-12 10:00:00</td>
                </tr>
                <tr>
                    <td>User 2</td>
                    <td>$55.00</td>
                    <td>2023-10-12 10:15:00</td>
                </tr>
                <tr>
                    <td>User 3</td>
                    <td>$60.00</td>
                    <td>2023-10-12 10:30:00</td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <h2>Place Your Bid</h2>
    <form>
        <label for="bid-amount">Bid Amount:</label>
        <input type="number" id="bid-amount" step="0.01">
        <button type="button" onclick="placeBid()">Place Bid</button>
    </form>
    
    <script>
        function placeBid() {
            const bidAmount = parseFloat(document.getElementById('bid-amount').value);
            if (!isNaN(bidAmount)) {
                // Here, you would send the bid information to the server for processing and update the bidding history table.
                // This is a placeholder for server-side logic.
                alert(`Bid of $${bidAmount.toFixed(2)} placed successfully.`);
                // You can update the bidding history table here.
            } else {
                alert('Invalid bid amount. Please enter a valid number.');
            }
        }
    </script>
</body>
</html>
