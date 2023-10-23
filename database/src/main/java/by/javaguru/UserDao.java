package by.javaguru;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;
import java.util.*;
import java.util.stream.Collectors;


public class UserDao {
    private static UserDao instance;

    static {
        try {
            instance = new UserDao();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private File jsonFile = new File(
            "C:/Java/IDEA_project/JavaEnterprise/Projects/web-2/service/src/main/resources/users.json");

    private ObjectMapper objectMapper = new ObjectMapper();
    private Map<Integer, User> userDao;

    public static UserDao getInstance() {
        return instance;
    }

    private UserDao() throws IOException {
        userDao = new HashMap();
        userDao = objectMapper.readValue(jsonFile, new TypeReference<>() {      //записываем Users из json-файла в Map
        });
    }

    public List<String> list() {                                                //получаем список имен Users
        return userDao.values().stream()
                .map(user -> user.getName())
                .collect(Collectors.toList());
    }

    public String findByID(Integer id) {                                        //поиск имени User по его ID
        if (userDao.containsKey(id))
            return userDao.get(id).getName();
        else return "User not found!";
    }

    public void setByID(Integer id, String name) {                              //если находим User по ID, то меняем
        if (userDao.containsKey(id)) {                                          //его имя и записываем в json-файл
            userDao.get(id).setName(name);
            try {
                objectMapper.writeValue(jsonFile, userDao);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
