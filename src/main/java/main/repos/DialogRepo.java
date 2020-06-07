package main.repos;

import main.domain.Message;
import main.domain.users.Dialog;
import main.domain.users.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface DialogRepo extends JpaRepository<Dialog, Long> {

}
