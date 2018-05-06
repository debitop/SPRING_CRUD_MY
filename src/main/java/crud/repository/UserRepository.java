package crud.repository;

import crud.model.User;

import java.util.List;

public interface UserRepository {

    void addUser(User user);

    void removeUser(Integer id);

    User get (Integer id);

    List getUsers();

    void updateUser(User user);




}
