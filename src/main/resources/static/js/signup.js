


// 회원 가입 정보를 서버에 전송하기
async function fetchToSignUp(userData) {

    const response = await fetch('/api/auth/signup', {
        method: 'POST',
        headers: { 'Content-Type' : 'application/json' },
        body: JSON.stringify(userData)
    });

    const data = await response.json();

    alert(data.message);
}


// 초기화 함수
function initSignUp() {
    
    // form submit 이벤트
    const $form = document.querySelector('.auth-form');
    
    // 입력 태그들을 읽어서 객체로 관리
    const $inputs = {
        name: document.querySelector('input[name="name"]'),
        email: document.querySelector('input[name="email"]'),
        password: document.querySelector('input[name="password"]'),
    };
    
    // 3개의 입력창에 입력 이벤트 바인딩
    Object.values($inputs).forEach($input => {
        $input.addEventListener('input', e => {
            validateField($input);  // 입력값 검증 함수 호출
        });
        $input.addEventListener('blur', e => {
            validateField($input);  // 입력창에 입력 도중에 다른 입력창으로 넘어갔을 때 검증!
        });
    });
    
    // 폼 이벤트 핸들러 바인딩
    $form.addEventListener('submit', e => {
       e.preventDefault();  // 폼 전송 시 발생하는 새로고침 방지

        // 사용자가 입력한 모든 입력값 읽어오기
        // const username = document.querySelector('input[name="name"]').value;
        // const email = document.querySelector('input[name="email"]').value;
        // const password = document.querySelector('input[name="password"]').value;
        //
        // const payload = {
        //     name: username,
        //     email: email,
        //     password: password,
        // };
        //
        // // 서버로 데이터 전송
        // fetchToSignUp(payload);
        
    });

}

//====== 함수 정의 ======//
// 입력값을 검증하고 에러메시지를 렌더링하는 함수
function validateField($input) {
    
    // 1. 빈 값 체크
    // 2. 이게 어떤 태그인지 알아오기
    const fieldName = $input.name;
    // 입력값 읽어오기
    const inputValue = $input.value;
    // input의 부모 가져오기
    const $formField = $input.closest('.form-field');

    if (!inputValue) {
        // console.log(fieldName, '여기 비어있음!!');
        showError($formField, '필수 입력란입니다.');  // 에러메시지 렌더링
    }


}


/**
 * 에러 메시지를 표시하고, 필드에 error 클래스를 부여
 */
function showError($formField, message) {
    $formField.classList.add('error');
    const $errorSpan = document.createElement('span');
    $errorSpan.classList.add('error-message');
    $errorSpan.textContent = message;
    $formField.append($errorSpan);
}


//====== 메인 실행 코드 ======//
document.addEventListener('DOMContentLoaded', initSignUp);