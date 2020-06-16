package main.repos;

import main.domain.Discipline;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DisciplineRepo extends JpaRepository<Discipline, Long> {
    Discipline findByName(String name);
}
