/**
 * Created by Muhammed Erdem on 10.10.2017.
 */

// $('.login').hide();

$('.signup').hide();
$('.recover-password').hide();
$('.loginoti').hide();


$('.btn-reset').click(function () {
    $('.login').hide();
    $('.recover-password').fadeIn(300);
});

$('.btn-member').click(function () {
    $('.login').hide();
    $('.signup').fadeIn(300);
});
$('.reginoti').hide();

//signin

function loginInsert(){
    let insertData=$('#Loginfrm').serialize();
    $.ajax({
        type: "POST",
        url: "/login/proc",
        data: insertData,
        dataType: "text",
        success: function (result) {
            if (result != null) {
                $('.login form').hide();
                $('.title p').hide();
                $('.or').hide();
                $('.btn-face').hide();
                $('.btn-twitter').hide();
                $('.login-name').text($('#Id').val());

                $('.loginoti').fadeIn(300);
            }// end of if
        },
        error: function (error) {
            $('.error').text('아이디, 또는 비밀번호를 확인해주세요');
        }
    });
}

// register
$('.btn-register').click(function register() {
    $('.signup form').hide();
    $('.title p').hide();
    $('.or').hide();
    $('.btn-face').hide();
    $('.btn-twitter').hide();
    $('.reginoti').fadeIn(300);
    $('.regist-name').text($('#Id').val());

    let insertData = $('#registerMember').serialize();
    memberInsert(insertData);

});//end og register

function memberInsert(insertData) {
    $.ajax({
        type: "POST",
        url: "/login/register",
        data: insertData,
        dataType: "json",
        success: function (result) {
            if (result != null) {
                alert(result.message);
            }// end of if
        }// end of success
    });//end of ajax
}//end of function


$('.btn-login').click(function () {
    $('.signup').hide();
    $('.recover-password').hide();
    $('.login').fadeIn(300);

});

$('.notification').hide();



function findInsert() {
    let insertData = $('#resetPassword').serialize();
    $.ajax({
        type: "POST",
        url: "/login/findID",
        data: insertData,
        dataType: "text",
        success: function (result) {
            if (result != null) {
                $('.reset-mail').text($('#resetPassword').val());
                $('.recover-password form').hide();
                $('.title p').hide();

                $('.notification').fadeIn(300);
            }// end of if
        },
        error: function (error) {
            $('.error').text('이메일을 확인해주세요.');


        }
    });
}



// 네이버 로그인


