package Dec;

import Dec.dao.AdminDao;
import Dec.dao.UserDao;
import Dec.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.InputStream;
import java.util.List;

/**
 * @author this
 * @date 2021年12月19日 13:29
 */
public class UserTest {

    InputStream is;
    SqlSession sqlSession;
    UserDao ud;

    @Before
    public void init() throws Exception {
        is = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        sqlSession = factory.openSession(false);
        ud = sqlSession.getMapper(UserDao.class);
    }

    @After
    public void destroy() throws Exception {
        sqlSession.commit();
        sqlSession.close();
        is.close();
    }

    @Test
    public void findByName() {
        List<User> users = ud.findUserByName("admin");
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void findById() {
        User user = ud.findUserById(1);
        System.out.println(user);
    }

    @Test
    public void addUser(){
        User user = new User();
        user.setUsername("张三");
        user.setPassword("666");
        user.setIdentity("普通用户");
        ud.addUser(user);
    }

    @Test
    public void deleteUser(){
        ud.deleteUserById(3);
    }

    @Test
    public void findALL(){
        List<User> users = ud.findAll();
        for (User user : users) {
            System.out.println(user);
        }
    }
}
