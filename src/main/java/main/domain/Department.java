package main.domain;

import main.domain.users.DepartmentManager;
import main.domain.users.Teacher;
import main.domain.users.User;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "department")
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)

    private Long id;

    private String name;


    /*
    @JoinTable (name="department_speciality",
            joinColumns=@JoinColumn (name="department_id"),
            inverseJoinColumns=@JoinColumn(name="speciality_id"))*/


    public Long getId() {
        return id;
    }

    public List<Speciality> getSpecialityList() {
        return specialityList;
    }

    public List<Teacher> getTeacherList() {
        return teacherList;
    }

    public List<DepartmentManager> getDepartmentManagerList() {
        return departmentManagerList;
    }

    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<Speciality> specialityList;


    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<Teacher> teacherList;

    @OneToMany(mappedBy = "department", fetch = FetchType.LAZY)
    private List<DepartmentManager> departmentManagerList;


    public String getName() {

        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
