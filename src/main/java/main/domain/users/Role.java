package main.domain.users;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    STUDENT, TEACHER, ADMIN, DepartmentManager;

    @Override
    public String getAuthority() {
        return name();
    }
}
