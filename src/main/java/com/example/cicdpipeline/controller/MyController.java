package com.example.cicdpipeline.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("github-actions/cicd/v1")
public class MyController {

    @GetMapping
    public String helloVisitor(){
        return "Hello visitor";
    }
}
