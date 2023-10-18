var today = new Data();
var year = today.getFullYear();
var est = new Data('Apr 16, 1996 15:45:55');
var difference = today.getTime() - est.getTime();
difference = (difference /31556900000);
var elMsg = document.getElementById('message');
elMsg.textContent = Math.flppr(difference) + 'years of online travel advice';