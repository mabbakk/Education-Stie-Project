package com.spring.educationsiteproject.repository;


import com.spring.educationsiteproject.domain.member.entity.Member;
import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface MemberRepository {

    // 회원 정보 생성
    void insert(Member member);
}
