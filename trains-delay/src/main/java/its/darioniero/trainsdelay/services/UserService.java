package its.darioniero.trainsdelay.services;

import its.darioniero.trainsdelay.entities.User;
import its.darioniero.trainsdelay.models.UserDto;

import java.util.List;


public interface UserService {
    void saveUser(UserDto userDto);

    User findUserByEmail(String email);

    List<UserDto> findAllUsers();
}