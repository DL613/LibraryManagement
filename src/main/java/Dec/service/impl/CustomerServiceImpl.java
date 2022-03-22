package Dec.service.impl;

import Dec.dao.CustomerDao;
import Dec.domain.Book;
import Dec.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 19:58
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Qualifier("customerDao")
    @Autowired
    private CustomerDao customerDao;

    @Override
    public List<Book> AllBooks() {
        System.out.println("业务层:客户查询图书馆书籍...");
        return customerDao.AllBooks();
    }

    @Override
    public List<Book> CustomerBooks() {
        System.out.println("业务层:客户查询个人借阅书籍...");
        return customerDao.CustomerBooks();
    }

    @Override
    public List<Book> findByNameInMine(String name) {
        System.out.println("业务层:客户通过书名查询个人借阅书籍..."+name);
        return customerDao.findByNameInMine(name);
    }

    @Override
    public List<Book> findByNameInLibrary(String name) {
        System.out.println("业务层:客户通过书名查询图书馆书籍..."+name);
        return customerDao.findByNameInLibrary(name);
    }

    @Override
    public void borrowBook(Book book) {
        System.out.println("业务层:客户借阅图书馆书籍..."+book);
        customerDao.borrowBook(book);
    }

    @Override
    public void returnBook(Integer id) {
        System.out.println("业务层:客户归还书籍..."+id);
        customerDao.returnBook(id);
    }

    @Override
    public void deletePrimary() {
        System.out.println("业务层:客户表删除主键");
        customerDao.deletePrimary();
    }

    @Override
    public void addPrimary() {
        System.out.println("业务层:客户表添加主键");
        customerDao.addPrimary();
    }

    @Override
    public Book CustomerFindByIdInLibrary(Integer id) {
        System.out.println("业务层:客户表通过id查找图书馆书籍..."+id);
        return customerDao.CustomerFindByIdInLibrary(id);
    }

    @Override
    public Book CustomerFindByIdInCustomer(Integer id) {
        System.out.println("业务层:客户表通过id查找书架书籍..."+id);
        return customerDao.CustomerFindByIdInCustomer(id);
    }
}
