package main.repos;

import main.domain.users.Dialog;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DialogRepo extends JpaRepository<Dialog, Long> {

}
