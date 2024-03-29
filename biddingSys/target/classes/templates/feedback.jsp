<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>@import url('https://fonts.googleapis.com/css2?family=Overpass:wght@400;700&display=swap');

:root {
    --orange: hsl(25, 97%, 53%);
    --white: hsl(0, 0%, 100%);
    --light-grey: hsl(217, 12%, 63%);
    --medium-grey: hsl(216, 12%, 54%);
    --dark-blue: hsl(213, 19%, 18%);
    --very-dark-blue: hsl(216, 12%, 8%);
}

* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Overpass', sans-serif;
    width: 100%;
    height: 100vh;
    background: var(--very-dark-blue);
}
main {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
}

.rating-card {
    width: 350px;
    display: flex;
    flex-direction: column;
    background: var(--dark-blue);
    border-radius: 20px;
    padding: 40px 30px;
}
.rating-card .rating-card__front, .rating-card .rating-card__back {
    display: flex;
    flex-direction: column;
    row-gap: 20px;
}
.rating-card .rating-card__front .rating-card__img {
    width: 50px;
    height: 50px;
    background: #3e454dc5;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
}
.rating-card .rating-card__front .rating-card__content h2, .rating-card .rating-card__back .rating-card__content h1 {
    color: var(--white);
    font-size: 26px;
    font-weight: 500;
}
.rating-card .rating-card__front .rating-card__content p, .rating-card .rating-card__back .rating-card__content p {
    color: var(--light-grey);
    line-height: 20px;
    margin-top: 12px;
}
.rating-card .rating-card__front .rating-card__ratings {
    display: flex;
    justify-content: space-between;
}
.rating-card .rating-card__front .rating-card__ratings button {
    background: #3e454dc5;
    border-radius: 50%;
    outline: none;
    border: 0;
    width: 50px;
    height: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    color: var(--medium-grey);
    font-size: 18px;
    font-weight: 600;
    cursor: pointer;
    transition: all 300ms linear;
}
.rating-card .rating-card__front .rating-card__ratings button:hover {
    background: var(--light-grey);
    color: white;
}
.rating-card .rating-card__front .rating-card__ratings button:active, .rating-card .rating-card__front .rating-card__ratings button.active {
    background: var(--orange);
    color: white;
}
.rating-card .rating-card__front .rating-card__btn {
    background: var(--orange);
    cursor: pointer;
    outline: none;
    border: 0;
    padding: 15px;
    color: var(--white);
    text-transform: uppercase;
    font-size: 16px;
    letter-spacing: 4px;
    font-weight: 600;
    border-radius: 25px;
    transition: all 300ms linear;
}
.rating-card .rating-card__front .rating-card__btn:hover {
    color: var(--orange);
    background: white;
}


.rating-card .rating-card__back {
    display: none;
    align-items: center;
    row-gap: 30px;
}
.rating-card .rating-card__back .rating-card__img {
    display: flex;
    justify-content: center;
}
.rating-card .rating-card__back .rating-card__result {
    text-align: center;
    background: #3e454dc5;
    display: inline-block;
    padding: 10px 25px;
    border-radius: 25px;
    width: fit-content;
    color: var(--orange);
}
.rating-card .rating-card__back .rating-card__content h1, .rating-card .rating-card__back .rating-card__content p {
    text-align: center;
}</style>
<title>Insert title here</title>
</head>
<body>
<script>var feedbackScore = 0;
let allBtn = document.querySelectorAll(".rating-card__ratings button");
let submitBtn = document.querySelector(".rating-card__btn");
let frontPart = document.querySelector(".rating-card__front");
let backPart = document.querySelector(".rating-card__back");

allBtn.forEach(btn => {
	btn.addEventListener("click", function() {
		feedbackScore = this.innerText;
		allBtn.forEach(button => {
			button.classList.remove("active");
		});
		this.classList.add("active");
	})
});

submitBtn.addEventListener("click", function() {
	frontPart.style.display = "none";
	backPart.querySelector(".rating-card__result--value").innerText = feedbackScore;
	backPart.style.display = "flex";
})</script>
<main>
		<div class="rating-card">
			<div class="rating-card__front">
				<div class="rating-card__img">
					<img src="https://rvs-interactive-rating-component.vercel.app/images/icon-star.svg" alt="">
				</div>
				<div class="rating-card__content">
					<h2>How did we do?</h2>
					<p>Please let us know how we did with your support request. All feedback is appreciated to help us improve our offering!</p>
				</div>
				<div class="rating-card__ratings">
					<button>1</button>
					<button>2</button>
					<button>3</button>
					<button>4</button>
					<button>5</button>
				</div>
				<button class="rating-card__btn">submit</button>
			</div>
			<div class="rating-card__back">
				<div class="rating-card__img">
					<img src="https://rvs-interactive-rating-component.vercel.app/images/illustration-thank-you.svg" alt="">
				</div>
				<div class="rating-card__result">
					You selected <span class="rating-card__result--value">4</span> out of 5
				</div>
				<div class="rating-card__content">
					<h1>Thank you!</h1>
					<p>We appreciate you taking the time to give a rating. If you ever need more support, don't hesitate to get in touch!</p>
				</div>
			</div>
		</div>
	</main>

</body>
</html>