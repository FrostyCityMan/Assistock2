/*!
* Start Bootstrap - Blog Home v5.0.8 (https://startbootstrap.com/template/blog-home)
* Copyright 2013-2022 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-blog-home/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

anychart.onDocumentReady(function () {
    var data = [
        {
            "x": "IT",
            "value": 590000000,
            category: "Sino-Tibetan"
        },
        {
            "x": "Python",
            "value": 283000000,
            category: "Indo-European"
        },
        {
            "x": "소프트웨어",
            "value": 544000000,
            category: "Indo-European"
        },
        {
            "x": "JAVA",
            "value": 527000000,
            category: "Indo-European"
        }, {
            "x": "C++",
            "value": 422000000,
            category: "Afro-Asiatic"
        }, {
            "x": "HTML",
            "value": 620000000,
            category: "Afro-Asiatic"
        }
    ];
    var chart = anychart.tagCloud(data);
    chart.angles([0]);
    chart.container("container");
    // chart.getCredits().setEnabled(false);
    chart.draw();

});

// myscrpit.js

function bbsCheck() {
    //게시판 유효성 검사
    //1) 작성자 2글자 이상 입력
    let wname = document.getElementById("wname").value;
    wname = wname.trim();
    if (wname.length < 2) {
        alert("이름을 두글자 이상 입력하세요.");
        return false;
    }
    //2) 제목 2글자 이상 입력
    let subject = document.getElementById("subject").value;
    subject = subject.trim();
    if (subject.length < 2) {
        alert("제목을 두글자 이상 입력하세요.");
        return false;
    }
    //3) 내용 입력 유무
    let content = document.getElementById("content").value;
    content = content.trim();
    if (content.length < 1) {
        alert("내용을 입력 해주세요.");
        return false;
    }

    //4) 비밀번호 4글자 이상 입력, 숫자만.
    let passwd = document.getElementById("passwd").value;
    passwd = passwd.trim();
    if (passwd.length < 4) {
        alert("비밀번호를 4글자 이상 입력해주세요.");
        return false;
    } else if (isNaN(passwd)) {
        alert("비밀번호는 숫자로만 입력해주세요.");
        return false;
    }

    return true; //onsubmit이벤트에서 서버로 전송
} //end bbsCheck();

function pwCheck() {
    let passwd = document.getElementById("passwd").value;
    passwd = passwd.trim();
    if (passwd.length < 4) {
        alert("비밀번호를 4글자 이상 입력해주세요.");
        return false;
    } else if (isNaN(passwd)) {
        alert("비밀번호는 숫자로만 입력해주세요.");
        return false;
    }
    let message = "정말로 삭제 하시겠습니까?";
    if (confirm(message)) {
        return true;
    } else {
        return false;
    } //end if
} //end pwCheck;

function updateCheck() {
    //1) 작성자 2글자 이상 입력
    let wname = document.getElementById("wname").value;
    wname = wname.trim();
    if (wname.length < 2) {
        alert("이름을 두글자 이상 입력하세요.");
        return false;
    }
    //2) 제목 2글자 이상 입력
    let subject = document.getElementById("subject").value;
    subject = subject.trim();
    if (subject.length < 2) {
        alert("제목을 두글자 이상 입력하세요.");
        return false;
    }
    //3) 내용 입력 유무
    let content = document.getElementById("content").value;
    content = content.trim();
    if (content.length < 1) {
        alert("내용을 입력 해주세요.");
        return false;
    }

    let passwd = document.getElementById("passwd").value;
    passwd = passwd.trim();
    if (passwd.length < 4) {
        alert("비밀번호를 4글자 이상 입력해주세요.");
        return false;
    } else if (isNaN(passwd)) {
        alert("비밀번호는 숫자로만 입력해주세요.");
        return false;
    }
    let message = "정말로 수정 하시겠습니까?";
    if (confirm(message)) {
        return true;
    } else {
        return false;
    } //end if
}

function setCookie(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie =
        name +
        "=" +
        escape(value) +
        "; path=/; expires=" +
        todayDate.toGMTString() +
        ";";
}

function searchCheck() {
    //검색어를 입력해야만 서버로 전송
    let word = document.getElementById("word").value;
    word = word.trim();
    if (word.length == 0) {
        alert("검색어를 입력해주세요");
        return false;
    }
    return true;
}

function loginCheck() {
    //로그인 유효성 검사 (아이디, 비번)
    //1) 아이디 5~10글자 이내인지 검사
    let id = document.getElementById("id").value; //id 가져오기
    id = id.trim();
    if (!(5 <= id.length && id.length <= 10)) {
        alert("아이디 5~10글자 이내로 입력해주세요.");
        document.getElementById("id").focus(); //id 칸에 커서 생성
        return false; //서버로 전송하지 않음. (onsubmit은 return값 가짐)
    } //if end

    //2) 비밀번호 5~10글자 이내인지 검사
    let passwd = document.getElementById("passwd").value; //비밀번호 가져오기
    passwd = passwd.trim();
    if (!(5 <= passwd.length && passwd.length <= 10)) {
        alert("비밀번호 5~10글자 이내로 입력해주세요.");
        document.getElementById("passwd").focus;
        return false;
    } //if end
} //loginCheck() end
// document.getElementById("btnclose").addEventListener("click", function(){
//   this.parentNode.parentNode.style.display = 'none';});
//
// function close(){
//
// }
//
// function closeWin() {
//   if ( document.notice_form.chkbox.checked ){
//     setCookie( "maindiv", "done" , 1 );
//   }
//   document.all['divpop'].style.visibility = "hidden";
// }

function idCheck() {
    //아이디 중복확인
    //모달 창? ->부모창과 자식창이 한 몸으로 구성되어 있음

    //새창 만들기
    //->모바일에 기반을 둔 Frontend단에서는 사용하지 말것
    //-> 부모창과 자식창이 별개로 구성되어 있음
    //window.open("파일명","새창이름", "다양한 옵션들")
    window.open("idCheckForm.jsp", "idwin", "width=400,height=350");
} //end idCheck

function emailCheck() {
    window.open("emailCheckForm.jsp", "emailwin", "width=400,height=350");
}
function check(re, what, message) {
    //정규화데이터,아이템 id,메세지
    if (re.test(what.value)) {
        //what의 문자열에 re의 패턴이 있는지 나타내는 함수 test
        //만약 내가 입력한 곳의 값이 정규화 데이터를 썼다면 true를 반환해서 호출 된 곳으로 리턴됨
        return true;
    }
    alert(message);
    what.value = "";
    what.focus();
}
function memberCheck() {
    let id = document.getElementById("id").value;
    let passwd = document.getElementById("passwd").value;
    let repasswd = document.getElementById("repasswd").value;
    let email = document.getElementById("email").value;
    let tel = document.getElementById("tel").value;
    let zipcode = document.getElementById("zipcode").value;
    let address1 = document.getElementById("address1").value;
    let address2 = document.getElementById("address2").value;
    let job = document.getElementById("job").value;
    var regul2 =
        /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
    if (!check(email.regul2, "이메일 형식을 지켜주세요")) {
        email.focus();
        return false;
    }
    if (id == null || id.length >= 11 || id.length <= 4) {
        alert("아이디를 확인해주세요");
        id.focus();
        return false;
    } //end if id

    if (passwd == null || passwd.length >= 6) {
        alert("비밀번호를 확인해주세요");
        passwd.focus();
        return false;
    } //end if passwd
    if (repasswd == null || repasswd !== passwd) {
        alert("비밀번호가 일치하지 않습니다.");
        repasswd.focus();
        return false;
    } //end if repasswd
    if (email == null) {
        alert("이메일을 입력해주세요");
        email.focus();
    }
    if (tel == null) {
        alert("연락처를 입력해주세요.");
        tel.focus();
        return false;
    }

    return true;
} //end membercheck

function pdsCheck() {
    //1) 작성자 2글자 이상 입력
    let wname = document.getElementById("wname").value;
    wname = wname.trim();
    if (wname.length < 2) {
        alert("이름을 두글자 이상 입력하세요.");
        return false;
    }
    //2) 제목 2글자 이상 입력
    let subject = document.getElementById("subject").value;
    subject = subject.trim();
    if (subject.length < 2) {
        alert("제목을 두글자 이상 입력하세요.");
        return false;
    }
    //3) 내용 입력 유무
    let content = document.getElementById("content").value;
    content = content.trim();
    if (content.length < 1) {
        alert("내용을 입력 해주세요.");
        return false;
    }

    //4) 비밀번호 4글자 이상 입력, 숫자만.
    let passwd = document.getElementById("passwd").value;
    passwd = passwd.trim();
    if (passwd.length < 4) {
        alert("비밀번호를 4글자 이상 입력해주세요.");
        return false;
    } else if (isNaN(passwd)) {
        alert("비밀번호는 숫자로만 입력해주세요.");
        return false;
    }
    //5) 첨부파일
    //-> 파일의 확정명이 이미지파일(png, jpg, gif)인지 확인하시오.
    let filename = document.getElementById("filename").value;
    filename = filename.trim();
    if (filename == 0) {
        alert("첨부 파일을 선택하세요.");
        return false;
    } else {
        let ext = filename.substr(filename.lastIndexOf(".") + 1);
        ext = ext.toLowerCase();
        if (ext == "png" || ext == "jpg" || ext == "gif") {
            return true;
        } else {
            alert("이미지 파일만 업로드해주세요.");
            return false;
        } //end if file name
    } //end if

    return true;
} //end pdsCheck