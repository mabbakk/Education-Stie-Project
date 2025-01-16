package com.spring.educationsiteproject.domain.member.entity;


import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@Builder
public class Member {

    private long id;
    private String name;
    private String email;
    private String password;
    private String refreshToken;

}
