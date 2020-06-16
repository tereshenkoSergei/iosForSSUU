package main.controller;

import main.domain.Department;
import main.domain.Discipline;
import main.domain.Speciality;
import main.domain.users.Teacher;
import main.repos.DepartmentRepo;
import main.repos.DisciplineRepo;
import main.repos.SpecialityRepo;
import main.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/specialty")
public class SpecialtyController {
    final
    DepartmentRepo departmentRepo;

    final
    SpecialityRepo specialityRepo;

    final
    UserRepo userRepo;

    final
    DisciplineRepo disciplineRepo;

    public SpecialtyController(DepartmentRepo departmentRepo, SpecialityRepo specialityRepo, UserRepo userRepo, DisciplineRepo disciplineRepo) {
        this.departmentRepo = departmentRepo;
        this.specialityRepo = specialityRepo;
        this.userRepo = userRepo;
        this.disciplineRepo = disciplineRepo;
    }


    @GetMapping
    public String specialtyList(Model model) {

        List<List<Speciality>> listOfSpLists = new ArrayList<>();


        departmentRepo.findAll().forEach(department -> {
            listOfSpLists.add(department.getSpecialityList());

        });
        model.addAttribute("listOfSpLists", listOfSpLists);
        model.addAttribute("departments", departmentRepo.findAll());

        return "specialty/specialty";
    }


    @GetMapping("/create")
    public String specialty(Model model) {
        model.addAttribute("departments", departmentRepo.findAll());

        return "specialty/createSpeciality";
    }

    @PostMapping("/create/execute")
    public String execute(@RequestParam String specialtyName,
                          @RequestParam String department,
                          Model model) {

        Speciality speciality = new Speciality();
        speciality.setName(specialtyName);
        speciality.setDepartment(departmentRepo.findByName(department));

        model.addAttribute("departments", departmentRepo.findAll());

        specialityRepo.save(speciality);

        return "redirect:/specialty/create";
    }


    @GetMapping("/edit/{speciality}")
    public String editSpecialty(@PathVariable Speciality speciality,
                                Model model) {
        model.addAttribute("speciality", speciality);


        List<Discipline> disciplineAbsentList = disciplineRepo.findAll();
        disciplineAbsentList.removeAll(speciality.getDisciplineList());

        model.addAttribute("disciplineAbsentList", disciplineAbsentList);

        return "specialty/editSpeciality";
    }

    @PostMapping("/edit/{speciality}/addTeacherToDiscipline")
    public String addTeacherToDiscipline(@RequestParam String disciplineName,
                                         @PathVariable Speciality speciality) {
        speciality.
                getDisciplineList().
                add(disciplineRepo.findByName(disciplineName));

        specialityRepo.save(speciality);
        return "redirect:/specialty/edit/" + speciality.getId().toString();
    }


}
