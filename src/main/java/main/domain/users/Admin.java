package main.domain.users;

import org.springframework.security.core.GrantedAuthority;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "admin")
@DiscriminatorValue("1")
public class Admin extends User{

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<Role> list = new ArrayList<>();
        list.add(Role.ADMIN);
        return list;
    }

}
