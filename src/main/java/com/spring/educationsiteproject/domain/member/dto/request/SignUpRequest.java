package com.spring.educationsiteproject.domain.member.dto.request;


import com.spring.educationsiteproject.domain.member.entity.Member;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.*;

@Getter @Setter @ToString
@NoArgsConstructor
@AllArgsConstructor
public class SignUpRequest {

    @NotBlank(message = "성함을 입력해주세요.")
    private String name;


    @NotBlank(message = "이메일을 입력해주세요.")
    private String email;


    @NotBlank(message = "비밀번호를 입력해주세요.")
    @Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d@$!%*#?&]{8,}$",
            message = "비밀번호는 8자 이상, 영문과 숫자 조합이어야 합니다")
    private String password;


    // 클라이언트가 전송한 입력값들을 엔터티로 변환
    public Member toEntity() {
        return Member.builder()
                .name(this.name)
                .email(this.email)
                .password(this.password)
                .build();
    }
}
