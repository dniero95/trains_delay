package its.darioniero.trainsdelay.repositories;

import its.darioniero.trainsdelay.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}