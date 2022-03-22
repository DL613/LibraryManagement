package Dec;

import Dec.dao.AdminDao;
import Dec.dao.CustomerDao;
import Dec.domain.Book;
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
 * @date 2021年12月17日 19:54
 */
public class CustomerTest {

    InputStream is;
    SqlSession sqlSession;
    CustomerDao cd;

    @Before
    public void init() throws Exception {
        is = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        sqlSession = factory.openSession(false);
        cd = sqlSession.getMapper(CustomerDao.class);
    }

    @After
    public void destroy() throws Exception {
        sqlSession.commit();
        sqlSession.close();
        is.close();
    }

    @Test
    public void testCustomerBooks(){
        List<Book> books = cd.CustomerBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testAll(){
        List<Book> books = cd.AllBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testFindByNameInLibrary(){
        List<Book> books = cd.findByNameInLibrary("西游记");
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testBorrow(){
        List<Book> books = cd.findByNameInLibrary("西游记");
        cd.borrowBook(books.get(0));
    }

    @Test
    public void testFindByNameInMine(){
        List<Book> books = cd.findByNameInMine("西游记");
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testReturn(){
        cd.returnBook(1);
    }

    @Test
    public void testPrimary(){
        List<Book> books1 = cd.CustomerBooks();
        for (Book book : books1) {
            System.out.println(book);
        }
        cd.deletePrimary();
        cd.addPrimary();

        List<Book> books = cd.CustomerBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }
}
