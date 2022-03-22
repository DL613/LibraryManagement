package Dec.service;

import Dec.domain.Book;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 19:57
 */
public interface CustomerService {

    /*
    查询图书馆所有
     */

    List<Book> AllBooks();


    /*
    查询用户所有
     */
    List<Book> CustomerBooks();
    /*
    通过书名查找自己的书籍
     */

    List<Book> findByNameInMine(String name);

    /*
    通过书名查找图书馆书籍
     */
    List<Book> findByNameInLibrary(String name);

    /*
    借书
     */
    void borrowBook(Book book);

    /*
    还书
     */
    void returnBook(Integer id);

    /*
    删除用户表的主键
     */
    void deletePrimary();

    /*
    添加用户表的主键
     */
    void addPrimary();

    /*
        通过id查找图书馆书籍
         */
    Book CustomerFindByIdInLibrary(Integer id);

    /*
        通过id查找书架书籍
         */
    Book CustomerFindByIdInCustomer(Integer id);

}
