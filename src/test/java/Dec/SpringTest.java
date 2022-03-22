package Dec;

import Dec.domain.Book;
import Dec.service.AdminService;
import Dec.service.CustomerService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 22:34
 */
public class SpringTest {

    @Test
    public void run1(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        CustomerService cs = (CustomerService) ac.getBean("customerService");

        List<Book> books = cs.AllBooks();
        for (Book book : books) {
            System.out.println(book);
        }

    }

    @Test
    public void run2(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        AdminService as = (AdminService) ac.getBean("adminService");

        List<Book> books = as.allBooks();
        for (Book book : books) {
            System.out.println(book);
        }

    }
}
