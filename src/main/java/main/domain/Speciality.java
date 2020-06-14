package main.domain;

import net.bytebuddy.build.ToStringPlugin;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "speciality")
public class Speciality {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    public void setName(String name) {
        this.name = name;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String getName() {
        return name;
    }

    public List<Group> getGroupList() {
        return groupList;
    }

    public List<Discipline> getDisciplineList() {
        return disciplineList;
    }

    public Department getDepartment() {
        return department;
    }

    @OneToMany(mappedBy = "speciality", fetch = FetchType.EAGER)
    private List<Group> groupList;

    @ManyToMany
    @JoinTable (name="speciality_discipline",
            joinColumns=@JoinColumn (name="speciality_id"),
            inverseJoinColumns=@JoinColumn(name="discipline_id"))
    private List<Discipline> disciplineList;

    //исправить на ont=etomany
   /* @ManyToMany
    @JoinTable (name="department_speciality",
            joinColumns=@JoinColumn (name="speciality_id"),
            inverseJoinColumns=@JoinColumn(name="department_id"))*/

 //  @OneToMany
  // @ManyToOne(mappedBy = "departmentList", fetch = FetchType.LAZY)
    @ManyToOne
    @JoinColumn(name = "department_id")
    private Department department;


}
