package main.domain;


import main.domain.users.Teacher;
import main.domain.users.User;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "discipline")
public class Discipline {


    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    private String name;
    private int numOfTerm;
    private int hours;




    public Discipline() {
        this("", 0, 0);
        this.documents = new ArrayList<>();
        this.specialityList = new ArrayList<>();
        this.userList = new ArrayList<>();
        this.documents = new ArrayList<>();

    }


    public Discipline(String name, int numOfTerm, int hours){
        this.name = name;
        this.hours = hours;
        this.numOfTerm = numOfTerm;
    }
    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }

    public List<Speciality> getSpecialityList() {
        return specialityList;
    }

    public void setSpecialityList(List<Speciality> specialityList) {
        this.specialityList = specialityList;
    }

    public List<Document> getDocuments() {
        return documents;
    }

    public void setDocuments(List<Document> documents) {
        this.documents = documents;
    }

    @ManyToMany
    @JoinTable(name = "user_discipline",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "teacher_id"))
    private List<User> userList;


    @OneToMany(mappedBy = "discipline", fetch = FetchType.EAGER)
    private List<Document> documents;


    @ManyToMany
    @JoinTable(name = "speciality_discipline",
            joinColumns = @JoinColumn(name = "discipline_id"),
            inverseJoinColumns = @JoinColumn(name = "speciality_id"))
    private List<Speciality> specialityList;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
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


    @Override
    public String toString() {
        return "Discipline{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", numOfTerm=" + numOfTerm +
                ", specialityList=" + specialityList +
                '}';
    }
}
