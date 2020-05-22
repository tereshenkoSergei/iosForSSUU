package main.domain;

import main.domain.users.Student;
import main.domain.users.User;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "groups")
public class Group {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String groupName;
    private Integer course;

    @OneToMany(mappedBy = "group", fetch = FetchType.EAGER)
    private List<Student> students;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "speciality_id")
    private Speciality speciality;

    //private List<Discipline> studyList;

    public void toNextCourse(){

    }
}
