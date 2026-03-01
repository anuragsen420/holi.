<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Happy Holi Wishes</title>

<style>
body {
    margin: 0;
    padding: 0;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    font-family: Arial, sans-serif;
    background: linear-gradient(45deg, #ff4d4d, #ffcc00, #33cc33, #3399ff);
    background-size: 400% 400%;
    animation: colors 8s infinite;
}

@keyframes colors {
    0% {background-position: 0% 50%;}
    50% {background-position: 100% 50%;}
    100% {background-position: 0% 50%;}
}

.container {
    text-align: center;
    background: rgba(255,255,255,0.9);
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 0 20px rgba(0,0,0,0.3);
}

h1 {
    color: #ff0066;
    font-size: 45px;
}

p {
    font-size: 20px;
}

button {
    padding: 12px 25px;
    border: none;
    background: #ff0066;
    color: white;
    font-size: 18px;
    border-radius: 8px;
    cursor: pointer;
}

button:hover {
    background: #cc0052;
}
</style>
</head>

<body>

<div class="container">
    <h1>🌸 Happy Holi 🌸</h1>
    <p id="wish">Wishing you a colorful and joyful Holi!</p>
    <button onclick="showWish()">Click for Special Wish</button>
</div>

<script>
function showWish(){
    document.getElementById("wish").innerHTML =
    "May your life be filled with colors of happiness, success and love. Happy Holi!";
}
</script>

</body>
</html>