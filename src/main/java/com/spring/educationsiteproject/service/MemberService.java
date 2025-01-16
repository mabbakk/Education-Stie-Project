package com.spring.educationsiteproject.service;


import com.spring.educationsiteproject.domain.member.dto.request.SignUpRequest;
import com.spring.educationsiteproject.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor

public class MemberService {

    private final MemberRepository memberRepository;
    
    // 회원가입 중간 처리
    public void signUp(SignUpRequest signUpRequest) {

        // 회원 정보를 데이터베이스에 저장
        memberRepository.insert(signUpRequest.toEntity());
    }

}
