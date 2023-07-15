package its.darioniero.trainsdelay.repositories;


import its.darioniero.trainsdelay.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);

}