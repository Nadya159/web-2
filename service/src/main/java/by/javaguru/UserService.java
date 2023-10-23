package by.javaguru;

import java.util.List;

public class UserService {
    private final UserDao userDao = UserDao.getInstance();

    public List<String> list() {
        return userDao.list();
    }

    public String getUserName(Integer id) {
        return userDao.findByID(id);
    }

    public String setUserName(Integer id, String name) {
        userDao.setByID(id, name);
        return (userDao.findByID(id));
    }
}
