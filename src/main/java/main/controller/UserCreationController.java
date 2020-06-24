package main.controller;

import main.domain.users.Admin;
import main.domain.users.DepartmentManager;
import main.domain.users.Student;
import main.domain.users.Teacher;
import main.repos.DepartmentRepo;
import main.repos.GroupRepo;
import main.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Constraint;

@Controller
@RequestMapping("/createUser")
public class UserCreationController {

    @Autowired
    UserRepo userRepo;

    @Autowired
    DepartmentRepo departmentRepo;

    @Autowired
    GroupRepo groupRepo;

    @GetMapping("/admin")
    public String createAdmin() {
        return "userAdd/adminAdd1";
    }

    @PostMapping("/admin/execute")
    public String executeAdmin(@RequestParam String name,
                               @RequestParam String email,
                               @RequestParam String pswrd
    ) {
        Admin admin = new Admin();
        admin.setUsername(name);
        admin.setEmail(email);
        admin.setPassword(pswrd);

        userRepo.save(admin);
        return "userAdd/adminAdd1";
    }


    @GetMapping("/dm")
    public String createDm(Model model) {
        model.addAttribute("departments", departmentRepo.findAll());
        return "userAdd/dmAdd1";
    }

    @GetMapping("/student")
    public String createStudent(


            Model model) {
        model.addAttribute("departments", departmentRepo.findAll());


        return "userAdd/studentAdd1";
    }

    @PostMapping("/student/execute")
    public String insertStudent(@RequestParam String name,
                                @RequestParam String email,
                                @RequestParam String pswrd,
                                @RequestParam String group) {
        Student student = new Student();
        student.setUsername(name);
        student.setEmail(email);
        student.setPassword(pswrd);
        student.setGroup(groupRepo.findByGroupName(group));
        userRepo.save(student);

        return "redirect:/createUser/student";
    }

    @GetMapping("/teacher")
    public String createTeacher(Model model) {
        model.addAttribute("departments", departmentRepo.findAll());
        return "userAdd/teacherAdd1";
    }

    @PostMapping("/teacher/execute")
    public String executeTeacher(@RequestParam String name,
                                 @RequestParam String email,
                                 @RequestParam String pswrd,
                                 @RequestParam String department) {
        Teacher teacher = new Teacher();
        teacher.setUsername(name);
        teacher.setEmail(email);
        teacher.setPassword(pswrd);
        teacher.setDepartment(departmentRepo.findByName(department));

        userRepo.save(teacher);

        return "userAdd/teacherAdd1";
    }

    @PostMapping("/dm/execute")
    public String executeDm(@RequestParam String name,
                            @RequestParam String email,
                            @RequestParam String pswrd,
                            @RequestParam String department) {
        DepartmentManager dm = new DepartmentManager();
        dm.setUsername(name);
        dm.setEmail(email);
        dm.setPassword(pswrd);
        dm.setDepartment(departmentRepo.findByName(department));

        return "userAdd/dmAdd1";
    }

}
