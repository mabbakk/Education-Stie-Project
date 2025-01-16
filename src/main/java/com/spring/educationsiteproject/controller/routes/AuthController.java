package com.spring.educationsiteproject.controller.routes;


import com.spring.educationsiteproject.service.MemberService;
import com.spring.educationsiteproject.domain.member.dto.request.SignUpRequest;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/auth")
@Slf4j
@RequiredArgsConstructor

public class AuthController {

    private final MemberService memberService;


    // 회원가입은 데이터를 생성 -> POST
    @PostMapping("/signup")
    public ResponseEntity<Map<String, Object>> signup(@RequestBody @Valid SignUpRequest signUpRequest) {

        log.info("request for signup : {}", signUpRequest.getName());

        memberService.signUp(signUpRequest);   // memberService에서 signUp 함수 호출 후 Request의 값을 넘겨줌!

        return ResponseEntity
                .ok()
                .body(Map.of(
                        "message", "회원가입이 완료되었습니다.",
                        "name", signUpRequest.getName()
                ));
    }

}
