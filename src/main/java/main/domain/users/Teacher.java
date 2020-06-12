package main.domain.users;


import main.domain.Department;
import main.domain.Discipline;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Entity
@Table(name = "teacher")
@DiscriminatorValue("3")
public class Teacher extends User{




    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<Role> list = new ArrayList<>();
        list.add(Role.TEACHER);
        return list;
    }

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "department_id")
    private Department department;

}
