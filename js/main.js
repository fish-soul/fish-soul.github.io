function getCurrentPos () {
    var left = $(window).scrollLeft();
    var width = $(window).width();
    $('.contents.' + ((left / width) + 1)).addClass('active');

    return left / width;
}

$(document).ready(function () {
    var currentPos = getCurrentPos();
    var totalItemCount = 5;
    var windowWidth = $(window).width();

    $('body').keyup(function (e) {
        // left
        if (e.keyCode == 37) {
            moveToLeft();
            return;
        }

        // right
        if (e.keyCode == 39) {
            moveToRight();
            return;
        }
    });

    $('.LeftArrow').click(function () {
        moveToLeft();
    });

    $('.RightArrow').click(function () {
        moveToRight();
    });

    function moveToLeft () {
        if (currentPos <= 0) {
            return;
        }

        currentPos--;
        $('.contents').removeClass('active');
        $('.contents.' + (currentPos + 1)).addClass('active');
        $('html,body').animate({scrollLeft: windowWidth * currentPos});
    }

    function moveToRight () {
        if (currentPos >= totalItemCount - 1) {
            return;
        }

        currentPos++;
        $('.contents').removeClass('active');
        $('.contents.' + (currentPos + 1)).addClass('active');
        $('html,body').animate({scrollLeft: windowWidth * currentPos});
    }

    $('.hamburg').click(function () {
        $('.HiddenNavi').addClass('active');
    })

    $('.btn').click(function () {
        $('.HiddenNavi').removeClass('active');
    })
});

/* function getCurrentPos () {
    var left = $(window).scrollLeft();
    var width = $(window).width();
    $('.contents.' + ((left / width) + 1)).addClass('active');

    return left / width;
}

$(document).ready(function () {
    var currentPos = getCurrentPos();
    var totalItemCount = 5;
    var windowWidth = $(window).width();
    var page = 0, dgree = 0;

    $(window).scroll(function (e) {
        var offsetX = ($(window).scrollLeft() / windowWidth).toFixed(1).toString();
        var info = offsetY.split('.');
        var page = parseInt(info[0]);
        var degree = parseInt(info[1]);


        $('#event').text(page);
    });

    $('html,body').mouseup(function () {
        alert('asdfasdf');
        if (degree > 5) {
            $('html,body').animate({scrollLeft: windowWidth * page});
        } else {
            $('html,body').animate({scrollLeft: windowWidth * page - 1});
        }
    });

    $('body').keyup(function (e) {
        // left
        if (e.keyCode == 37) {
            moveToLeft();
            return;
        }

        // right
        if (e.keyCode == 39) {
            moveToRight();
            return;
        }
    });

    $('.LeftArrow').click(function () {
        moveToLeft();
    });

    $('.RightArrow').click(function () {
        moveToRight();
    });

    function moveToLeft () {
        if (currentPos <= 0) {
            return;
        }

        currentPos--;
        $('.contents').removeClass('active');
        $('.contents.' + (currentPos + 1)).addClass('active');
        $('html,body').animate({scrollLeft: windowWidth * currentPos});
    }

    function moveToRight () {
        if (currentPos >= totalItemCount - 1) {
            return;
        }

        currentPos++;
        $('.contents').removeClass('active');
        $('.contents.' + (currentPos + 1)).addClass('active');
        $('html,body').animate({scrollLeft: windowWidth * currentPos});
    }

    $('.hamburg').click(function () {
        $('.HiddenNavi').addClass('active');
    })

    $('.btn').click(function () {
        $('.HiddenNavi').removeClass('active');
    })
});

    */