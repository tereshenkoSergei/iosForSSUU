package main.controller;

import java.util.Map;

import main.domain.users.*;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {


    @GetMapping("/work")
    public String greeting(
            @AuthenticationPrincipal User user,
            Model model) {

        model.addAttribute("user", user);

        if (user instanceof Admin) {

            return "personalPages/adminPersonalPage";
        }
        if (user instanceof Student) {

            return "personalPages/studentPersonalPage";
        }
        if (user instanceof Teacher) {

            return "personalPages/teacherPersonalPage";
        }


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
