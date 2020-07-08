package main.controller;


import main.domain.Discipline;
import main.domain.users.Admin;
import main.domain.users.Teacher;
import main.domain.users.User;
import main.repos.DisciplineRepo;
import main.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/disciplineList")
public class DisciplineController {

    @Autowired
    DisciplineRepo disciplineRepo;

    @Autowired
    UserRepo userRepo;

    @GetMapping
    public String disciplineList(
            @AuthenticationPrincipal User user,
            Model model
    ) {


        if (user instanceof Teacher) {
            model.addAttribute("disciplines", ((Teacher) user).getDisciplineList());
        } else {

            model.addAttribute("disciplines", disciplineRepo.findAll());
        }

        if (user instanceof Admin) {
            model.addAttribute("isAdmin", true);
        }

        return "discipline/disciplineList1";
    }

    @GetMapping("/create")
    public String create(@AuthenticationPrincipal User user,
                         Model model
    ) {
        if (user instanceof Teacher) {
            model.addAttribute("disciplines",
                    ((Teacher) userRepo
                            .findByUsername(user.getUsername()))
                            .getDisciplineList()
            );
        }


        model.addAttribute("disciplines", disciplineRepo.findAll());

        return "discipline/createDiscipline";
    }

    @PostMapping("/create/execute")
    public String execute(@RequestParam String disciplineName,
                          @RequestParam Integer hours,
                          @RequestParam Integer numOfTerm,
                          @AuthenticationPrincipal User user,
                          Model model
    ) {
        if (user instanceof Teacher) {
            model.addAttribute("disciplines", ((Teacher) user).getDisciplineList());
        }
        model.addAttribute("disciplines", disciplineRepo.findAll());

        Discipline discipline = new Discipline(disciplineName, numOfTerm, hours);
        disciplineRepo.save(discipline);
        return "redirect:/disciplineList";
    }

    @GetMapping("{discipline}")
    public String editDiscipline(Model model,
                                 @PathVariable Discipline discipline,
                                 @AuthenticationPrincipal User user
    ) {

        model.addAttribute("discipline", discipline);

        if (user instanceof Admin) {

            List<Teacher> teacherAbsentList = userRepo.findAllTeachers();
            teacherAbsentList.removeAll(discipline.getTeacherList());

            model.addAttribute("absentTeachers", teacherAbsentList);
        }

        return "discipline/editDiscipline";
    }

    @PostMapping("{discipline}/addTeacher")
    public String addTeacher(Model model,
                             @PathVariable Discipline discipline,
                             @RequestParam String teacherForAdd
    ) {

        discipline.getTeacherList().add((Teacher) userRepo.findByUsername(teacherForAdd));
        disciplineRepo.save(discipline);
        userRepo.save(userRepo.findByUsername(teacherForAdd));

        model.addAttribute("discipline", discipline);

        return "redirect:/disciplineList/" + discipline.getId();
    }


}
