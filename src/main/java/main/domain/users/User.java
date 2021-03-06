package main.domain.users;

import main.domain.Dialog;
import main.domain.Discipline;
import main.domain.Message;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.*;

@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@DiscriminatorColumn(name = "user_role", discriminatorType = DiscriminatorType.INTEGER)
@DiscriminatorValue("0")

public abstract class User
        implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    protected Long id;

    protected String username;
    protected String password;
    protected String email;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return id.equals(user.id);
    }



    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    @OneToMany(mappedBy = "author")
    private List<Message> messageList;

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinTable (name="user_dialog",
            joinColumns=@JoinColumn (name="user_id"),
            inverseJoinColumns=@JoinColumn(name="dialog_id"))
    private Set<Dialog> dialogList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void addDialog(Dialog dialog){

        if(dialogList==null){
            dialogList = new LinkedHashSet<>();
        }
        dialogList.add(dialog);
    }

    public String getEmail() {
        return email;
    }

    public String getClassNameAsString(){
        return this.getClass().toString().substring(
                this.getClass().toString().lastIndexOf('.') + 1
        );
    }


    public void setEmail(String email) {
        this.email = email;
    }

    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

    public Set<Dialog> getDialogList() {
        return dialogList;
    }

    public void setDialogList(Set<Dialog> dialogList) {
        this.dialogList = dialogList;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }




    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +

                '}';
    }


}