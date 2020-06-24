package main.controller;

import java.util.Map;

import main.domain.users.*;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {


    @GetMapping("/work")
    public String greeting(
            @AuthenticationPrincipal User user,
            Map<String, Object> model) {
        System.out.println(user.toString());


        if (user instanceof Admin) {
            System.out.println("personalPages/adminPersonalPage");
            return "personalPages/adminPersonalPage";
        }
        if (user instanceof Student) {
            System.out.println("personalPages/studentPersonalPage");
            return "personalPages/studentPersonalPage";
        }
        if (user instanceof Teacher) {
            System.out.println("personalPages/teacherPersonalPage");
            return "personalPages/teacherPersonalPage";
        }
        System.out.println("personalPages/personalPageFull");


        return "personalPages/personalPageFull";

    }

    @GetMapping("/")
    public String mainPage() {
       // return "MainpageIOS/MainpageIOS/index";
        return "main_page";

    }


    @GetMapping("/reg")
    public String reg() {
        return "registration";
    }


}
