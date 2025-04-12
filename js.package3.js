/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  order.jsp 및 directOrder.jsp 내에서 사용되는 자바스크립트 코드의 시작부
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function check_val()             // 주문서의 미입력항목 부분을 체크하는 자바스크립트 함수
{
   if (document.form.memTel.value == "") 
   {
      alert("주문자 전화번호는 반드시 기입을 해야 합니다. ");
      document.form.memTel.focus();
      return false;         
   }         

   if (document.form.receiver.value == "") 
   {
      alert("수령인 성명은 반드시 기입을 해야 합니다. ");
      document.form.receiver.focus();
      return false;         
   }

   if (document.form.rcvAddress.value == "") 
   {
      alert("수령인 주소는 반드시 기입을 해야 합니다. ");
      document.form.rcvAddress.focus();
      return false;         
   }

   if (document.form.rcvPhone.value == "") 
   {
      alert("수령인 전화번호는 반드시 기입을 해야 합니다. ");
      document.form.rcvPhone.focus();
      return false;         
   }
 
   if (document.form.cardNo.value == "" && document.form.bank.value == 0 ) 
   {
      alert("결제방법 중 하나는 선택해야 합니다. ");
      document.form.cardNo.focus();
      return false;         
   }

       if (document.form.cardNo.value != "" && document.form.bank.value != 0 ) 
   {
      alert("결제방법 중 하나만 선택해야 합니다. ");
      document.form.cardNo.focus();
      return false;         
   }

   if (document.form.cardNo.value != "" && document.form.cardPass.value == "" ) 
   {
      alert("카드 비밀번호는 반드시 기입을 해야 합니다. ");
      document.form.cardNo.focus();
      return false;         
   }

      document.form.submit();
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  order.jsp 및 directOrder.jsp 내에서 사용되는 자바스크립트 코드의 끝
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  insertMember.jsp 내에서 사용되는 자바스크립트 코드의 시작부
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function checkID()      // ID를 입력받은 후에 팝업창을 띄워주면서 
{                                //   checkId.jsp (중복검사 수행)를 호출해 주는 자바스크립트 함수
   var id = newMem.id.value;      //  form의 이름이 newMem인 것에 주목할 것!

    if (id  == "")            //   11~16행:  ID를 입력없이 ID 중복체크 버튼을 클릭할 경우의 처리
    {
      alert("ID를 입력해 주세요!"); 
      newMem.id.focus(); 
      return; 
    }

   window.open("chckId.jsp?id="+id,"win", "width=255, height=145, scrollbars=no, resizable=no");
}                                        // 용례)  =>  window.open("URL", "창이름", "창의 특성");





function checkValue() {
    if (newMem.id.value == "") {
        alert("ID를 입력해 주세요!");
        newMem.id.focus();
        return false;
    }

    if (newMem.password.value == "") {
        alert("비밀번호를 입력해 주세요!");
        newMem.password.focus();
        return false;
    }

    if (newMem.name.value == "") {
        alert("성명을 입력해 주세요!");
        newMem.name.focus();
        return false;
    }

    if (newMem.Email.value == "") {
        alert("이메일을 입력해 주세요!");
        newMem.Email.focus();
        return false;
    }

    if (newMem.Phone.value == "") {
        alert("전화번호를 입력해 주세요!");
        newMem.Phone.focus();
        return false;
    }

    // 모든 필드가 채워졌을 때에만 폼을 제출
    return true;
}

function checkPasswordMatch() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;

      if (password !== confirmPassword) {
         document.getElementById("passwordMatchError").style.display = "table-row";
      } else {
         document.getElementById("passwordMatchError").style.display = "none";
      }
   };

function findmecheckValue() {
    if (fmName.id.value == "") {
        alert("이름을 입력해 주세요!");
        fmName.id.focus();
        return false;
    }

    if (fmName.Phone.value == "") {
        alert("전화번호를 입력해 주세요!");
        fmName.Phone.focus();
        return false;
    }

    if (fmDkind.name.value == "") {
        alert("견종을 입력해 주세요!");
        fmDkind.name.focus();
        return false;
    }

    if (fmDplace.Place.value == "") {
        alert("실종위치를 입력해 주세요!");
        fmDplace.Place.focus();
        return false;
    }

    if (fmDmemo.Memo.value == "") {
        alert("특이사항을 입력해 주세요!");
        fmDmemo.Memo.focus();
        return false;
    }
	if (fmDphoto.Photo.value == "") {
        alert("사진을 등록해 주세요!");
        fmDphoto.Photo.focus();
        return false;
    }

    // 모든 필드가 채워졌을 때에만 폼을 제출
    return true;
}




function idFocus()        // 폼이 로딩되면  ID를 입력하는 위치에 바로 커서를 위치시켜놓는
{                              // 자바스크립트 함수  (body 태그안의 onLoad 이벤트 핸들러에 주목할 것!)
   newMem.id.focus();
   return;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  insertMember.jsp 내에서 사용되는 자바스크립트 코드의 끝
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////








/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  login.jsp 및 manager.html 내에서 사용되는 자바스크립트 코드의 시작부
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function login_check()      // 로그인시 미입력항목 부분을 체크해주는 자바스크립트 함수
{
   if(document.login.id.value=="")
   {
       alert("아이디를 입력해 주세요.");
       document.login.id.focus();
       return;   
    }

    if(document.login.pass.value=="")
   {
       alert("비밀번호를 입력해 주세요.");
       document.login.pass.focus();         
       return;
    }
      
    document.login.submit();
}



function onEnterSubmit()     // 로그인버튼을 클릭하지 않고, 엔터키를 입력하더라도 로그인 가능하게 해줌               
{
     var keyCode = window.event.keyCode;
      if(keyCode==13)  login.submit();    //  "keyCode==13"은 엔터키가 입력됨을 의미함
}
   

function login_focus()     // 폼이 로딩되면  ID를 입력하는 위치에 바로 커서를 위치시켜놓는
{                                 // 자바스크립트 함수  (body 태그안의 onLoad 이벤트 핸들러에 주목할 것!)
      document.login.id.focus();
      return;
}


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  login.jsp 및 manager.html 내에서 사용되는 자바스크립트 코드의 끝
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  viewDetailProduct.jsp 내에서 사용되는 자바스크립트 코드의 시작부
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function directOrd()        //  "즉시구매하기" 버튼을 클릭시 호출
{
   var str=product.qty.value;
   var frm = document.product;
   frm.action = "directOrder.jsp";
   frm.submit();
}


function inCart()              //  "장바구니담기" 버튼을 클릭시 호출
{
   var str=product.qty.value;
   var frm = document.product;
   frm.action = "inCart.jsp";
   frm.submit();
}


function enlarge()           //  상품이미지 클릭시 팝업창을 띄워주면서 이미지 표시
{
   var no = document.product.prdNo.value;
   window.open("./images/"+no+".jpg","win", "width=280, height=280, scrollbars=no, resizable=no");
}



function amountCheck()     //   주문수량에 유효한 값만 들어가도록 처리해 줌
{
   obj=document.product.qty;
   if(isNaN(obj.value))          //    isNaN(a)함수는 a가 숫자가 아닐 경우, true를 return해줌
   {
      obj.value="1";
      alert('숫자만 입력해주세요');
      return;
   }

   if(obj.value < 1)
   {
      obj.value="1";
   }
}


function amountPlus()         //   주문수량을 1 증가 시킴
{
   obj=document.product.qty;
   obj.value=parseInt(obj.value) + 1;
}


function amountMinus()        //   주문수량을 1 감소 시킴
{
   obj=document.product.qty;
   if(parseInt(obj.value)  > 1)
   {
      obj.value=parseInt(obj.value) - 1;
   }
   else
   {
      alert('더이상 줄일수가 없습니다');
      return;
   }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//  viewDetailProduct.jsp 내에서 사용되는 자바스크립트 코드의 끝
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
