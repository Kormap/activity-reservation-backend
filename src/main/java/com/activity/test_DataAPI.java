package com.activity;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

@RestController
@RequestMapping("/api")
public class test_DataAPI {

    @GetMapping("/connect")
    public String helloWorld() {
        return "<h3>Success API connect!</h3>";
    }
}