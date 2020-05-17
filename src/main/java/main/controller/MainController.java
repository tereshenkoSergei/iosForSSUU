package main.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {


    @GetMapping("/work")
    public String greeting(Map<String, Object> model) {

        return "work";
    }

    @GetMapping("/")
    public String mainPage(){
        return "main_page";
    }




    @GetMapping("/reg")
    public String reg(){
        return "registration";
    }


}
