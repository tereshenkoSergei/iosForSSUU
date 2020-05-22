package main.domain;



import main.domain.users.Student;
import main.domain.users.Teacher;
import main.domain.users.User;

import javax.persistence.*;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

@Entity
@Table(name = "discipline")
public class Discipline {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long disId;
    private String name;
    private int numOfTerm;

    @ManyToMany
    @JoinTable (name="teacher_discipline",
            joinColumns=@JoinColumn (name="discipline_id"),
            inverseJoinColumns=@JoinColumn(name="teacher_id"))
   private List<Teacher> teacherIdList;


    @OneToMany (mappedBy="discipline", fetch=FetchType.EAGER)
    private List<Document> documents;


    @ManyToMany
    @JoinTable (name="speciality_discipline",
            joinColumns=@JoinColumn (name="discipline_id"),
            inverseJoinColumns=@JoinColumn(name="speciality_id"))
    private List<Speciality> specialityList;




    public Long getDisId() {
        return disId;
    }

    public void setDisId(Long disId) {
        this.disId = disId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNumOfTerm() {
        return numOfTerm;
    }

    public void setNumOfTerm(int numOfTerm) {

    this.numOfTerm = numOfTerm;
    }






}
