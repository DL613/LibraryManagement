package Dec;

import Dec.dao.AdminDao;
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
public class AdminTest {

    InputStream is;
    SqlSession sqlSession;
    AdminDao ad;

    @Before
    public void init() throws Exception {
        is = Resources.getResourceAsStream("SqlMapConfig.xml");
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
        sqlSession = factory.openSession(false);
        ad = sqlSession.getMapper(AdminDao.class);
    }

    @After
    public void destroy() throws Exception {
        sqlSession.commit();
        sqlSession.close();
        is.close();
    }

    @Test
    public void testAll() {
        List<Book> books = ad.AllBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testAdd() {
        Book book = new Book();
        book.setName("语文");
        book.setAuthor("小红");
        book.setType("语言文学");
        book.setDetial("吃一堑长一智");
        book.setPrice(18d);
        book.setTotal(1);
        ad.addBook(book);
    }

    @Test
    public void testFindByName(){
        List<Book> books = ad.findByName("三国演义");
        for (Book book : books) {
            System.out.println(book);
        }
    }

    @Test
    public void testEditBook(){
        Book book = new Book(9,"数学","小明","探究","道生一,一生二,三生万物",12d,1);

        ad.editBook(book);
    }


    @Test
    public void testDelete(){
        ad.deleteBook(9);
    }

    @Test
    public void testPrimary(){
        List<Book> books = ad.AllBooks();
        for (Book book : books) {
            System.out.println(book);
        }
        ad.deletePrimary();
        ad.addPrimary();
        List<Book> books1 = ad.AllBooks();
        System.out.println("==============================================================================================");
        for (Book book : books1) {
            System.out.println(book);
        }
    }
}
