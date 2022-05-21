package com.example.aws_security_test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class TempController {

    @GetMapping("/test")
    public String testApi() {
        return "test";
    }
}
