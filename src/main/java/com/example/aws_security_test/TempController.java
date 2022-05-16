package com.example.aws_security_test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TempController {

    @GetMapping("/test")
    public String test() {
        return "jenkins_test";
    }
}
