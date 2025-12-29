package com.spring.mvc_hiber.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class TestController {

    @GetMapping("/test")
    @ResponseBody
    public String test() {
        return "TEST OK - Application is running! Timestamp: " + new java.util.Date();
    }

    @GetMapping("/ping")
    @ResponseBody
    public String ping() {
        return "PONG";
    }
}