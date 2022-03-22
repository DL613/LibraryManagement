package Dec.service.impl;

import Dec.dao.AdminDao;
import Dec.domain.Book;
import Dec.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 19:59
 */
@Service("adminService")
public class AdminServiceImpl implements AdminService {

    @Qualifier("adminDao")
    @Autowired
    private AdminDao adminDao;

    @Override
    public List<Book> allBooks() {
        System.out.println("管理员业务层:查询图书馆所有书籍...");
        return adminDao.AllBooks();
    }

    @Override
    public void addBook(Book book) {
        System.out.println("管理员业务层:添加书籍..."+book);
        adminDao.addBook(book);
    }

    @Override
    public List<Book> findByName(String name) {
        System.out.println("管理员业务层:查找书籍..."+name);
        return adminDao.findByName(name);
    }

    @Override
    public void editBook(Book book) {
        System.out.println("管理员业务层:编辑书籍..."+book);
        adminDao.editBook(book);
    }

    @Override
    public void deleteBook(Integer id) {
        System.out.println("管理员业务层:删除书籍..."+id);
        adminDao.deleteBook(id);
    }

    @Override
    public Book adMindById(Integer id) {
        System.out.println("管理员业务层:通过id查找书籍..."+id);
        return adminDao.adMindById(id);
    }

    @Override
    public void deletePrimary() {
        System.out.println("管理员业务层:删除主键...");
        adminDao.deletePrimary();
    }

    @Override
    public void addPrimary() {
        System.out.println("管理员业务层:添加主键...");
        adminDao.addPrimary();
    }
}
