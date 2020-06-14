package main.controller;

import main.domain.Group;
import main.repos.DepartmentRepo;
import main.repos.GroupRepo;
import main.repos.SpecialityRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/group")
public class GroupController {

    @Autowired
    SpecialityRepo specialityRepo;

    @Autowired
    GroupRepo groupRepo;

    @Autowired
    DepartmentRepo departmentRepo;

    @GetMapping("/create")
    public String createGroup(Model model) {

        model.addAttribute("departments", departmentRepo.findAll());

        return "group/createGroup";
    }

    @PostMapping("create/execute")
    public String execute(@RequestParam Integer directionNumber,
                          @RequestParam Integer course,
                          @RequestParam String speciality,
                          Model model) {



        Group group = new Group();
        group.setCourse(course);
        group.setGroupName("B-" + speciality + "-" + course.toString() + directionNumber);
        group.setSpeciality(specialityRepo.findByName(speciality));

        groupRepo.save(group);


        model.addAttribute("specialities", specialityRepo.findAll());
        return "redirect:/group/create";
    }
}
