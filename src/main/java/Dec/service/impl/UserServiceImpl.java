package Dec.service.impl;

import Dec.dao.UserDao;
import Dec.domain.User;
import Dec.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author this
 * @date 2021年12月19日 13:08
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Qualifier("userDao")
    @Autowired
    private UserDao ud;

    @Override
    public List<User> findUserByName(String name) {
        System.out.println("业务层:超级管理员查找"+name);
        return ud.findUserByName(name);
    }

    @Override
    public User findUserById(Integer id) {
        System.out.println("业务层:超级管理员查找"+id);
        return ud.findUserById(id);
    }

    @Override
    public void addUser(User user) {
        System.out.println("业务层:超级管理员添加用户"+user);
        ud.addUser(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        System.out.println("业务层:超级管理员删除用户"+id);
        ud.deleteUserById(id);
    }

    @Override
    public List<User> findAll() {
        System.out.println("业务层:超级管理员查询所有用户");
        return ud.findAll();
    }
}
