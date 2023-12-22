<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live Bidding System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
        }

        .product {
            text-align: center;
            padding: 20px;
        }

        .bidding-history {
            border: 1px solid #ccc;
            padding: 10px;
            max-height: 300px;
            overflow-y: scroll;
        }

        .bid-form {
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
    <div class="container">
        <h1>Live Bidding System</h1>

        <div class="product">
            <h2>Product X</h2>
            <p>Description: This is a description of Product X.</p>
        </div>

        <div class="bidding-history">
            <h3>Bidding History</h3>
            <ul id="bids"></ul>
        </div>

        <div class="bid-form">
            <h3>Place Your Bid</h3>
            <label for="bid-amount">Bid Amount:</label>
            <input type="number" id="bid-amount" step="0.01">
            <button id="place-bid">Place Bid</button>
        </div>
    </div>

    <script>
        const bidsList = document.getElementById("bids");
        const placeBidButton = document.getElementById("place-bid");
        const bidAmountInput = document.getElementById("bid-amount");

        placeBidButton.addEventListener("click", () => {
            const bidAmount = parseFloat(bidAmountInput.value);
            if (!isNaN(bidAmount)) {
                const listItem = document.createElement("li");
                listItem.textContent = `User placed a bid of $${bidAmount.toFixed(2)}`;
                bidsList.appendChild(listItem);
                bidAmountInput.value = "";
            } else {
                alert("Invalid bid amount. Please enter a valid number.");
            }
        });
    </script>
</body>
</html>
