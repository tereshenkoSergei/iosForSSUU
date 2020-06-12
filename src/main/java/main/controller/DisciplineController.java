package main.controller;


import main.domain.Discipline;
import main.domain.users.User;
import main.repos.DisciplineRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/disciplineList")
public class DisciplineController {

    @Autowired
    DisciplineRepo disciplineRepo;

    @GetMapping
    public String disciplineList(
            @AuthenticationPrincipal User user,
            Model model
    ) {
        model.addAttribute("user", user);

        return "discipline/disciplineList";
    }

    @GetMapping("/create")
    public String create(@AuthenticationPrincipal User user,
                         Model model
    ) {
        model.addAttribute("user", user);

        return "discipline/createDiscipline";
    }

    @PostMapping("/create/execute")
    public String execute(@RequestParam String disciplineName,
                          @RequestParam Integer hours,
                          @RequestParam Integer numOfTerm,
                          @AuthenticationPrincipal User user,
                          Model model
    ) {
        model.addAttribute("user", user);
        Discipline discipline = new Discipline(disciplineName,numOfTerm, hours);
        disciplineRepo.save(discipline);
        return "redirect:/disciplineList";
    }
}
