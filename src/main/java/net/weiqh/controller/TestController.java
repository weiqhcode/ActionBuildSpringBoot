package net.weiqh.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api")
public class TestController {
    @GetMapping("/test")
    public String test(){
        return "测试返回值 -- Test1  17:53";
    }
}
