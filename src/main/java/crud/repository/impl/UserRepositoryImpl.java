package crud.repository.impl;

import crud.model.User;
import crud.repository.UserRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(User user) {
        Session session=sessionFactory.getCurrentSession();
        session.persist(user);
    }

    @Override
    public void removeUser(Integer id) {

    }

    @Override
    public User get(Integer id) {
        return null;
    }

    @Override
    public List getUsers() {
        return null;
    }

    @Override
    public void updateUser(User user) {

    }
}
