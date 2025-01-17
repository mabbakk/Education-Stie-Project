package com.spring.educationsiteproject.service;


import com.spring.educationsiteproject.domain.member.dto.request.SignUpRequest;
import com.spring.educationsiteproject.domain.member.entity.Member;
import com.spring.educationsiteproject.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor

public class MemberService {

    private final MemberRepository memberRepository;
    private final PasswordEncoder passwordEncoder;
    
    // 회원가입 중간 처리
    public void signUp(SignUpRequest signUpRequest) {
        
        // 순수 비밀번호를 꺼내서 암호화
        String rawPassword = signUpRequest.getPassword();
        // 암호화 된 패스워드
        String encodedPassword = passwordEncoder.encode(rawPassword);


        // 회원정보를 엔터티로 변환
        Member newMember = signUpRequest.toEntity();
        // 패스워드를 인코딩 패스워드로 교체
        newMember.setPassword(encodedPassword);
        
        // DB에 전송
        memberRepository.insert(newMember);
    }

}
