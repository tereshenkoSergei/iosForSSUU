package main.controller;

import java.util.Map;

import main.domain.Role;
import main.domain.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {


    @GetMapping("/work")
    public String greeting(
            @AuthenticationPrincipal User user,
            Map<String, Object> model)
    {
        System.out.println(user.toString());

        if (user.getRoles().contains(Role.ADMIN)) {
            System.out.println("personalPages/adminPersonalPage");
            return "personalPages/adminPersonalPage";
        }
        if (user.getRoles().contains(Role.USER)) {
            System.out.println("personalPages/studentPersonalPage");
            return "personalPages/studentPersonalPage";
        }
        System.out.println("personalPages/personalPageFull");
        return  "personalPages/personalPageFull";

    }

    @GetMapping("/")
    public String mainPage() {
        return "main_page";
    }


    @GetMapping("/reg")
    public String reg() {
        return "registration";
    }


}
