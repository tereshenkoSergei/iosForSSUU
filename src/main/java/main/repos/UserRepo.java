package main.repos;



import main.domain.users.*;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.ArrayList;
import java.util.List;


public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByEmail(String email);

    default List<Teacher> findAllTeachers(){
        List<Teacher> teacherList = new ArrayList<>();

        findAll().forEach(user -> {
            if(user instanceof Teacher){
                teacherList.add((Teacher) user);
            }
        });
        return teacherList;
    }
    default List<Student> findAllStudents(){
        List<Student> studentsList = new ArrayList<>();

        findAll().forEach(user -> {
            if(user instanceof Student){
                studentsList.add((Student) user);
            }
        });
        return studentsList;
    }
    default List<Admin> findAllAdmins(){
        List<Admin> admins = new ArrayList<>();

        findAll().forEach(user -> {
            if(user instanceof Admin){
                admins.add((Admin) user);
            }
        });
        return admins;
    }
    default List<DepartmentManager> findAllDepartmentManagers(){
        List<DepartmentManager> departmentManagers = new ArrayList<>();

        findAll().forEach(user -> {
            if(user instanceof DepartmentManager){
                departmentManagers.add((DepartmentManager) user);
            }
        });
        return departmentManagers;
    }

}