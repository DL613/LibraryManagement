package Dec.dao;

import Dec.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author this
 * @date 2021年12月19日 12:45
 */
@Repository("userDao")
public interface UserDao {

    @Select("select * from user where username=#{username}")
     List<User> findUserByName(String name);

    @Select("select * from user where id=#{id}")
    User findUserById(Integer id);

    @Insert("insert into user(username,password,identity) values(#{username},#{password},#{identity})")
    void addUser(User user);

    @Update("delete from user where id=#{id}")
    void deleteUserById(Integer id);

    @Select("select * from user")
    List<User> findAll();
}
