package main.controller;

import main.domain.Department;
import main.repos.DepartmentRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/department")
public class DepartmentController {
    @Autowired
    DepartmentRepo departmentRepo;


    @GetMapping
    public String department() {
        return "department/createDepartment";
    }

    @GetMapping("/create")
    public String create() {

        return "department/createDepartment";
    }

    @PostMapping("/create/execute")
    public String executeCreation(@RequestParam String departmentName) {
        Department department = new Department();
        department.setName(departmentName);

      /*  departmentRepo.deleteById(1L);
        departmentRepo.deleteById(2L);*/

        departmentRepo.save(department);


        return "redirect:/department/create";

    }
}
