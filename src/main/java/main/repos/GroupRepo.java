package main.repos;

import main.domain.Group;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GroupRepo extends JpaRepository<Group, Long> {
    Group findByGroupName(String groupName);
}
