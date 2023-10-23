var score = 75;
var msg;

function Congratulate() {
    msg += 'congratulations! ';
}

if (score >= 50) {
   Congratulations();
    msg += 'Proceed to the next round.';
}

var el = document.getElementById('answer');
el.textContent = msg;