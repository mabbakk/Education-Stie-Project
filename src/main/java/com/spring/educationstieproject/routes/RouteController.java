package com.spring.educationstieproject.routes;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RouteController {


    @GetMapping("/")
    public String index() {
        return "index";
    }


    // 회원가입 페이지 열기
    @GetMapping("/signup")
    public String signup() {
        return "auth/signup";
    }

    // 로그인 페이지 열기
    @GetMapping("/login")
    public String login() {
        return "auth/login";
    }

}
