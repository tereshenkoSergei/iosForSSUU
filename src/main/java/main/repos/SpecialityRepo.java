package main.repos;

import main.domain.Speciality;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SpecialityRepo extends JpaRepository<Speciality, Long> {
    public Speciality findByName(String name);
}
