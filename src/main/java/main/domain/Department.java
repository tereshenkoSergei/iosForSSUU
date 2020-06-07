package main.domain;

import main.domain.users.DepartmentManager;
import main.domain.users.Teacher;
import main.domain.users.User;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "department")
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;


    /*
    @JoinTable (name="department_speciality",
            joinColumns=@JoinColumn (name="department_id"),
            inverseJoinColumns=@JoinColumn(name="speciality_id"))*/

    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<Speciality> specialityList;


    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<Teacher> teacherList;

    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<DepartmentManager> departmentManagerList;
}
