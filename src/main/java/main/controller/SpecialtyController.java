package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("specialty")
public class SpecialtyController {
    @GetMapping
    public String specialty(){
        return "specialty/specialty";
    }

//    @GetMapping("/create")
//    public String create(){
//
//    }
}
