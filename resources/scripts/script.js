function resize() {
    var loginPage = $('#loginPage');
    loginPage.css('top', window.innerHeight/2 - loginPage.height()/2);
    loginPage.css('right', window.innerWidth/2 - 275);
    loginPage.css('display', 'block');
};

$(window).resize(resize);
$(document).ready(resize);