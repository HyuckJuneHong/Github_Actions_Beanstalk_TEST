package com.example.aws_security_test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TempController {

    @GetMapping
    public String get() {
        return "test!";
    }
}
