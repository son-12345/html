var today = new Date
var hourNow = today.getHours();
var minuteNow = today.getMinutes();
var greeting;

if (hourNow > 18) {
    greeting = 'Good evening';
    className = 'evening'
} else if (hourNow > 12) {
    greeting = 'Good afternoon';
    className = 'afternoon'
} else if (hourNow > 0) {
    greeting = 'Good morning';
    className = 'morning'
} else {
    greeting = 'Welcome!';
}
document.write('<h3>' + greeting + '</h3>');
document.write('<h3>' + hourNow + ':'+ minuteNow + '</h3>');
var greetingElement = document.getElementById('greeting');
greetingElement.className = className;