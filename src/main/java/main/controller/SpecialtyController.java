package main.controller;

import main.domain.Department;
import main.domain.Speciality;
import main.repos.DepartmentRepo;
import main.repos.SpecialityRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/specialty")
public class SpecialtyController {
    @Autowired
    DepartmentRepo departmentRepo;

    @Autowired
    SpecialityRepo specialityRepo;


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

}
