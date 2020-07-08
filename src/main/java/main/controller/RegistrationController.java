package main.controller;

import main.domain.users.Role;
import main.domain.users.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import main.repos.UserRepo;

import java.util.Collections;
import java.util.Map;

public class RegistrationController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    //@PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model) {

        User userFromDb = userRepo.findByUsername(user.getUsername());

        if (userFromDb != null) {
            model.put("message", "User exists!");
            return "registration";
        }


       // user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/work";
    }
}
