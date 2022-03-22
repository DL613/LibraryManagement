package Dec.service;

import Dec.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @author this
 * @date 2021年12月19日 13:07
 */
public interface UserService {

    List<User> findUserByName(String name);


    User findUserById(Integer id);


    void addUser(User user);


    void deleteUserById(Integer id);

    List<User> findAll();
}
