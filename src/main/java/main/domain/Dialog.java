package main.domain;

import main.domain.Message;
import main.domain.users.User;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;


//юзеров тут не прописывать
@Entity
public class Dialog {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToMany(mappedBy = "dialog")
    private List<Message> messageList;

    public Dialog() {
        this.messageList = new ArrayList<>();
    }

    public void addMessage(Message message) {
        if (messageList == null) {
            messageList = new ArrayList<Message>();

        }
        messageList.add(message);
    }

    public Dialog(List<Message> messageList) {
        this.messageList = messageList;
    }


    @Override
    public String toString() {
        StringBuilder s = new StringBuilder("");

        userList.forEach(u -> s.append(u.getUsername()).append("; "));


        return "Dialog{" +
                "id=" + id +
                ", users=" + s +
                '}';
    }

    @ManyToMany(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    @JoinTable(name = "user_dialog",
            joinColumns = @JoinColumn(name = "dialog_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    private Set<User> userList;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Message> getMessageList() {
        return messageList;
    }

    public void setMessageList(List<Message> messageList) {
        this.messageList = messageList;
    }

    public Set<User> getUserList() {
        return userList;
    }

    public void setUserList(Set<User> userList) {
        this.userList = userList;
    }
}
